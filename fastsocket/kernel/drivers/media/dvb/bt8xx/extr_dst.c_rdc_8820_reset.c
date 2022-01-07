
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int DELAY ;
 int DST_DEBUG ;
 int DST_ERROR ;
 int NO_DELAY ;
 int RDC_8820_RESET ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ dst_gpio_outb (struct dst_state*,int ,int ,int ,int ) ;
 int udelay (int) ;
 int verbose ;

__attribute__((used)) static int rdc_8820_reset(struct dst_state *state)
{
 dprintk(verbose, DST_DEBUG, 1, "Resetting DST");
 if (dst_gpio_outb(state, RDC_8820_RESET, RDC_8820_RESET, 0, NO_DELAY) < 0) {
  dprintk(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
  return -1;
 }
 udelay(1000);
 if (dst_gpio_outb(state, RDC_8820_RESET, RDC_8820_RESET, RDC_8820_RESET, DELAY) < 0) {
  dprintk(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
  return -1;
 }

 return 0;
}
