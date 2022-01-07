
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int dummy; } ;
struct ca_msg {int msg; } ;


 int DST_CA_ERROR ;
 int DST_CA_NOTICE ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ dst_put_ci (struct dst_state*,int ,int ,int ,int ) ;
 int rdc_reset_state (struct dst_state*) ;
 int verbose ;

__attribute__((used)) static int write_to_8820(struct dst_state *state, struct ca_msg *hw_buffer, u8 length, u8 reply)
{
 if ((dst_put_ci(state, hw_buffer->msg, length, hw_buffer->msg, reply)) < 0) {
  dprintk(verbose, DST_CA_ERROR, 1, " DST-CI Command failed.");
  dprintk(verbose, DST_CA_NOTICE, 1, " Resetting DST.");
  rdc_reset_state(state);
  return -1;
 }
 dprintk(verbose, DST_CA_NOTICE, 1, " DST-CI Command success.");

 return 0;
}
