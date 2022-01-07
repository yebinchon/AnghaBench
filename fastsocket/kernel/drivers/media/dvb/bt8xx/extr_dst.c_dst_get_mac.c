
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int mac_address; int rxbuffer; } ;


 int DST_ERROR ;
 int DST_INFO ;
 int dprintk (int ,int ,int,char*,...) ;
 int dst_check_sum (int*,int) ;
 scalar_t__ dst_command (struct dst_state*,int*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,char,int) ;
 int verbose ;

__attribute__((used)) static int dst_get_mac(struct dst_state *state)
{
 u8 get_mac[] = { 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 get_mac[7] = dst_check_sum(get_mac, 7);
 if (dst_command(state, get_mac, 8) < 0) {
  dprintk(verbose, DST_INFO, 1, "Unsupported Command");
  return -1;
 }
 memset(&state->mac_address, '\0', 8);
 memcpy(&state->mac_address, &state->rxbuffer, 6);
 dprintk(verbose, DST_ERROR, 1, "MAC Address=[%pM]", state->mac_address);

 return 0;
}
