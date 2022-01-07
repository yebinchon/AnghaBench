
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int DST_NOTICE ;
 int dprintk (int ,int ,int,char*) ;
 int dst_pio_disable (struct dst_state*) ;
 int dst_pio_enable (struct dst_state*) ;
 int msleep (int) ;
 int verbose ;

int dst_error_recovery(struct dst_state *state)
{
 dprintk(verbose, DST_NOTICE, 1, "Trying to return from previous errors.");
 dst_pio_disable(state);
 msleep(10);
 dst_pio_enable(state);
 msleep(10);

 return 0;
}
