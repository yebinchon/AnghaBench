
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MPSC_0_CR1_OFFSET ;
 scalar_t__ MPSC_0_CR2_OFFSET ;
 int MPSC_CHR_2_TCS ;
 int in_le32 (scalar_t__) ;
 scalar_t__ mpsc_base ;
 int out_le32 (scalar_t__,int) ;

__attribute__((used)) static void mv64x60_udbg_putc(char c)
{
 if (c == '\n')
  mv64x60_udbg_putc('\r');

 while(in_le32(mpsc_base + MPSC_0_CR2_OFFSET) & MPSC_CHR_2_TCS)
  ;
 out_le32(mpsc_base + MPSC_0_CR1_OFFSET, c);
 out_le32(mpsc_base + MPSC_0_CR2_OFFSET, MPSC_CHR_2_TCS);
}
