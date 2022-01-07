
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dst_state {int dummy; } ;
struct ca_msg {int * msg; } ;


 int DST_CA_DEBUG ;
 int asn_1_decode (int *) ;
 int debug_string (int *,int,int ) ;
 int dprintk (int ,int ,int,char*,int) ;
 int handle_dst_tag (struct dst_state*,struct ca_msg*,struct ca_msg*,int) ;
 int memset (int *,char,int) ;
 int put_checksum (int *,int ) ;
 int verbose ;
 int write_to_8820 (struct dst_state*,struct ca_msg*,int,int) ;

__attribute__((used)) static int ca_set_pmt(struct dst_state *state, struct ca_msg *p_ca_message, struct ca_msg *hw_buffer, u8 reply, u8 query)
{
 u32 length = 0;
 u8 tag_length = 8;

 length = asn_1_decode(&p_ca_message->msg[3]);
 dprintk(verbose, DST_CA_DEBUG, 1, " CA Message length=[%d]", length);
 debug_string(&p_ca_message->msg[4], length, 0);

 memset(hw_buffer->msg, '\0', length);
 handle_dst_tag(state, p_ca_message, hw_buffer, length);
 put_checksum(hw_buffer->msg, hw_buffer->msg[0]);

 debug_string(hw_buffer->msg, (length + tag_length), 0);
 write_to_8820(state, hw_buffer, (length + tag_length), reply);

 return 0;
}
