
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MPSC_CHR_1 ;
 scalar_t__ MPSC_CHR_2 ;
 int MPSC_CHR_2_CRD ;
 int MPSC_CHR_2_EH ;
 int MPSC_CHR_2_RA ;
 int MPSC_CHR_2_TA ;
 int MPSC_CHR_2_TCS ;
 scalar_t__ MPSC_CHR_4 ;
 int MPSC_CHR_4_Z ;
 scalar_t__ MPSC_CHR_5 ;
 int MPSC_CHR_5_CTL1_INTR ;
 int MPSC_CHR_5_CTL1_VALID ;
 int chr1 ;
 int chr2 ;
 int in_le32 (int *) ;
 scalar_t__ mpsc_base ;
 int out_le32 (int *,int) ;

__attribute__((used)) static int mpsc_open(void)
{
 chr1 = in_le32((u32 *)(mpsc_base + MPSC_CHR_1)) & 0x00ff0000;
 chr2 = in_le32((u32 *)(mpsc_base + MPSC_CHR_2)) & ~(MPSC_CHR_2_TA
   | MPSC_CHR_2_TCS | MPSC_CHR_2_RA | MPSC_CHR_2_CRD
   | MPSC_CHR_2_EH);
 out_le32((u32 *)(mpsc_base + MPSC_CHR_4), MPSC_CHR_4_Z);
 out_le32((u32 *)(mpsc_base + MPSC_CHR_5),
   MPSC_CHR_5_CTL1_INTR | MPSC_CHR_5_CTL1_VALID);
 out_le32((u32 *)(mpsc_base + MPSC_CHR_2), chr2 | MPSC_CHR_2_EH);
 return 0;
}
