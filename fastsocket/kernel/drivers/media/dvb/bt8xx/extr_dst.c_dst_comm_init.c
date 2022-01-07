
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int type_flags; } ;


 int DST_ERROR ;
 int DST_INFO ;
 int DST_TYPE_HAS_FW_1 ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ dst_pio_enable (struct dst_state*) ;
 int msleep (int) ;
 scalar_t__ rdc_reset_state (struct dst_state*) ;
 int verbose ;

int dst_comm_init(struct dst_state *state)
{
 dprintk(verbose, DST_INFO, 1, "Initializing DST.");
 if ((dst_pio_enable(state)) < 0) {
  dprintk(verbose, DST_ERROR, 1, "PIO Enable Failed");
  return -1;
 }
 if ((rdc_reset_state(state)) < 0) {
  dprintk(verbose, DST_ERROR, 1, "RDC 8820 State RESET Failed.");
  return -1;
 }
 if (state->type_flags & DST_TYPE_HAS_FW_1)
  msleep(100);
 else
  msleep(5);

 return 0;
}
