
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int PortAddr ;
typedef int ASC_SCSI_BIT_ID_TYPE ;


 int ASC_MAX_TID ;
 int AscGetChipSyn (int ) ;
 int AscReadChipDvcID (int ) ;
 int AscSetBank (int ,int) ;
 int AscSetChipSyn (int ,int) ;
 int AscWriteChipDvcID (int ,int) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static int AscSetChipSynRegAtID(PortAddr iop_base, uchar id, uchar sdtr_data)
{
 ASC_SCSI_BIT_ID_TYPE org_id;
 int i;
 int sta = TRUE;

 AscSetBank(iop_base, 1);
 org_id = AscReadChipDvcID(iop_base);
 for (i = 0; i <= ASC_MAX_TID; i++) {
  if (org_id == (0x01 << i))
   break;
 }
 org_id = (ASC_SCSI_BIT_ID_TYPE) i;
 AscWriteChipDvcID(iop_base, id);
 if (AscReadChipDvcID(iop_base) == (0x01 << id)) {
  AscSetBank(iop_base, 0);
  AscSetChipSyn(iop_base, sdtr_data);
  if (AscGetChipSyn(iop_base) != sdtr_data) {
   sta = FALSE;
  }
 } else {
  sta = FALSE;
 }
 AscSetBank(iop_base, 1);
 AscWriteChipDvcID(iop_base, org_id);
 AscSetBank(iop_base, 0);
 return (sta);
}
