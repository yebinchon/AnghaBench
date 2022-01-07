
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sh_flctl {int dummy; } ;


 scalar_t__ FLECFIFO (struct sh_flctl*) ;
 unsigned long be32_to_cpu (unsigned long) ;
 unsigned long readl (void*) ;
 scalar_t__ wait_recfifo_ready (struct sh_flctl*,int) ;

__attribute__((used)) static int read_ecfiforeg(struct sh_flctl *flctl, uint8_t *buff, int sector)
{
 int i;
 unsigned long *ecc_buf = (unsigned long *)buff;
 void *fifo_addr = (void *)FLECFIFO(flctl);

 for (i = 0; i < 4; i++) {
  if (wait_recfifo_ready(flctl , sector))
   return 1;
  ecc_buf[i] = readl(fifo_addr);
  ecc_buf[i] = be32_to_cpu(ecc_buf[i]);
 }

 return 0;
}
