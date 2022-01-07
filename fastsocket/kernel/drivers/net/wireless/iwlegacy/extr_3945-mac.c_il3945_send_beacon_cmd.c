
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct il_priv {int dummy; } ;
struct TYPE_2__ {int * cmd; } ;
struct il3945_frame {TYPE_1__ u; } ;


 int C_TX_BEACON ;
 int ENOMEM ;
 int IL_ERR (char*) ;
 int il3945_free_frame (struct il_priv*,struct il3945_frame*) ;
 struct il3945_frame* il3945_get_free_frame (struct il_priv*) ;
 unsigned int il3945_hw_get_beacon_cmd (struct il_priv*,struct il3945_frame*,int ) ;
 int il_get_lowest_plcp (struct il_priv*) ;
 int il_send_cmd_pdu (struct il_priv*,int ,unsigned int,int *) ;

__attribute__((used)) static int
il3945_send_beacon_cmd(struct il_priv *il)
{
 struct il3945_frame *frame;
 unsigned int frame_size;
 int rc;
 u8 rate;

 frame = il3945_get_free_frame(il);

 if (!frame) {
  IL_ERR("Could not obtain free frame buffer for beacon "
         "command.\n");
  return -ENOMEM;
 }

 rate = il_get_lowest_plcp(il);

 frame_size = il3945_hw_get_beacon_cmd(il, frame, rate);

 rc = il_send_cmd_pdu(il, C_TX_BEACON, frame_size, &frame->u.cmd[0]);

 il3945_free_frame(il, frame);

 return rc;
}
