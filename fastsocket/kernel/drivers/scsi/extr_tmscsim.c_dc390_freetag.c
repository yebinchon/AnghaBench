
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc390_srb {int TagNumber; } ;
struct dc390_dcb {int TagMask; } ;


 int SCSI_NO_TAG ;

__attribute__((used)) static void __inline__
dc390_freetag (struct dc390_dcb* pDCB, struct dc390_srb* pSRB)
{
 if (pSRB->TagNumber != SCSI_NO_TAG) {
  pDCB->TagMask &= ~(1 << pSRB->TagNumber);
  pSRB->TagNumber = SCSI_NO_TAG;
 }
}
