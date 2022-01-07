
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dst_state {int dst_hw_cap; } ;
struct ca_msg {int* msg; } ;


 int DST_CA_ERROR ;
 int DST_TYPE_HAS_SESSION ;
 int dprintk (int ,int ,int,char*) ;
 int memcpy (int*,int*,int) ;
 int verbose ;

__attribute__((used)) static int handle_dst_tag(struct dst_state *state, struct ca_msg *p_ca_message, struct ca_msg *hw_buffer, u32 length)
{
 if (state->dst_hw_cap & DST_TYPE_HAS_SESSION) {
  hw_buffer->msg[2] = p_ca_message->msg[1];
  hw_buffer->msg[3] = p_ca_message->msg[2];
 } else {
  if (length > 247) {
   dprintk(verbose, DST_CA_ERROR, 1, " Message too long ! *** Bailing Out *** !");
   return -1;
  }
  hw_buffer->msg[0] = (length & 0xff) + 7;
  hw_buffer->msg[1] = 0x40;
  hw_buffer->msg[2] = 0x03;
  hw_buffer->msg[3] = 0x00;
  hw_buffer->msg[4] = 0x03;
  hw_buffer->msg[5] = length & 0xff;
  hw_buffer->msg[6] = 0x00;





  memcpy(&hw_buffer->msg[7], &p_ca_message->msg[4], length);
 }

 return 0;
}
