
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int DST_INFO ;
 int dprintk (int ,int ,int,char*) ;
 int dst_pio_disable (struct dst_state*) ;
 int msleep (int) ;
 int rdc_8820_reset (struct dst_state*) ;
 int verbose ;

int dst_error_bailout(struct dst_state *state)
{
 dprintk(verbose, DST_INFO, 1, "Trying to bailout from previous error.");
 rdc_8820_reset(state);
 dst_pio_disable(state);
 msleep(10);

 return 0;
}
