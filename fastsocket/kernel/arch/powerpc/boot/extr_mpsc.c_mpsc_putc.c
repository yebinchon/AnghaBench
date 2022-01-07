
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MPSC_CHR_1 ;
 scalar_t__ MPSC_CHR_2 ;
 int MPSC_CHR_2_TCS ;
 unsigned char chr1 ;
 int chr2 ;
 int in_le32 (int *) ;
 scalar_t__ mpsc_base ;
 int out_le32 (int *,int) ;

__attribute__((used)) static void mpsc_putc(unsigned char c)
{
 while (in_le32((u32 *)(mpsc_base + MPSC_CHR_2)) & MPSC_CHR_2_TCS);

 out_le32((u32 *)(mpsc_base + MPSC_CHR_1), chr1 | c);
 out_le32((u32 *)(mpsc_base + MPSC_CHR_2), chr2 | MPSC_CHR_2_TCS);
}
