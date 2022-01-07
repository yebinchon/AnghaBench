
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int PortAddr ;


 int AscPutMCodeSDTRDoneAtID (int ,int ,int ) ;
 int AscSetChipSynRegAtID (int ,int ,int ) ;

__attribute__((used)) static void AscSetChipSDTR(PortAddr iop_base, uchar sdtr_data, uchar tid_no)
{
 AscSetChipSynRegAtID(iop_base, tid_no, sdtr_data);
 AscPutMCodeSDTRDoneAtID(iop_base, tid_no, sdtr_data);
}
