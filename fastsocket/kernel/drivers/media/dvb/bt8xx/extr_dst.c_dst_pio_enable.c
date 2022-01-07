
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int DST_ERROR ;
 int NO_DELAY ;
 int RDC_8820_PIO_0_ENABLE ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ dst_gpio_outb (struct dst_state*,int ,int ,int ,int ) ;
 int udelay (int) ;
 int verbose ;

__attribute__((used)) static int dst_pio_enable(struct dst_state *state)
{
 if (dst_gpio_outb(state, ~0, RDC_8820_PIO_0_ENABLE, 0, NO_DELAY) < 0) {
  dprintk(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
  return -1;
 }
 udelay(1000);

 return 0;
}
