
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AMCC_OP_REG_MCSR_NVCMD ;
 int MCSR_NV_BUSY ;
 int inb (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int wait_for_nvram_ready(unsigned long s5933_base_addr)
{
 static const int timeout = 1000;
 unsigned int i;

 for (i = 0; i < timeout; i++) {
  if ((inb(s5933_base_addr +
    AMCC_OP_REG_MCSR_NVCMD) & MCSR_NV_BUSY)
      == 0)
   return 0;
  udelay(1);
 }
 return -1;
}
