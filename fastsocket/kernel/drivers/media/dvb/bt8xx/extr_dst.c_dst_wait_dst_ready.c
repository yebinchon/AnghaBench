
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int dummy; } ;


 int DST_ERROR ;
 int DST_INFO ;
 int DST_NOTICE ;
 int RDC_8820_PIO_0_ENABLE ;
 int dprintk (int ,int ,int,char*,...) ;
 scalar_t__ dst_gpio_inb (struct dst_state*,int*) ;
 int msleep (int) ;
 int verbose ;

int dst_wait_dst_ready(struct dst_state *state, u8 delay_mode)
{
 u8 reply;
 int i;

 for (i = 0; i < 200; i++) {
  if (dst_gpio_inb(state, &reply) < 0) {
   dprintk(verbose, DST_ERROR, 1, "dst_gpio_inb ERROR !");
   return -1;
  }
  if ((reply & RDC_8820_PIO_0_ENABLE) == 0) {
   dprintk(verbose, DST_INFO, 1, "dst wait ready after %d", i);
   return 1;
  }
  msleep(10);
 }
 dprintk(verbose, DST_NOTICE, 1, "dst wait NOT ready after %d", i);

 return 0;
}
