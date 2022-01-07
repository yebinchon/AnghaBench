
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;
struct ca_msg {int dummy; } ;


 int DST_CA_ERROR ;
 int DST_CA_NOTICE ;
 int GET_REPLY ;
 int NO_REPLY ;
 scalar_t__ ca_set_pmt (struct dst_state*,struct ca_msg*,struct ca_msg*,int,int ) ;
 int dprintk (int ,int ,int,char*) ;
 int verbose ;

__attribute__((used)) static int dst_check_ca_pmt(struct dst_state *state, struct ca_msg *p_ca_message, struct ca_msg *hw_buffer)
{
 int ca_pmt_reply_test = 0;





 if (ca_pmt_reply_test) {
  if ((ca_set_pmt(state, p_ca_message, hw_buffer, 1, GET_REPLY)) < 0) {
   dprintk(verbose, DST_CA_ERROR, 1, " ca_set_pmt.. failed !");
   return -1;
  }



  dprintk(verbose, DST_CA_ERROR, 1, " Not there yet");
 }

 if (!ca_pmt_reply_test) {
  if ((ca_set_pmt(state, p_ca_message, hw_buffer, 0, NO_REPLY)) < 0) {
   dprintk(verbose, DST_CA_ERROR, 1, " ca_set_pmt.. failed !");
   return -1;
  }
  dprintk(verbose, DST_CA_NOTICE, 1, " ca_set_pmt.. success !");


 }
 return 0;
}
