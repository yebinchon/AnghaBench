
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int dummy; } ;
struct TYPE_2__ {int * cmd; } ;
struct il_frame {TYPE_1__ u; } ;


 int C_TX_BEACON ;
 int EINVAL ;
 int ENOMEM ;
 int IL_ERR (char*) ;
 int il4965_free_frame (struct il_priv*,struct il_frame*) ;
 struct il_frame* il4965_get_free_frame (struct il_priv*) ;
 unsigned int il4965_hw_get_beacon_cmd (struct il_priv*,struct il_frame*) ;
 int il_send_cmd_pdu (struct il_priv*,int ,unsigned int,int *) ;

int
il4965_send_beacon_cmd(struct il_priv *il)
{
 struct il_frame *frame;
 unsigned int frame_size;
 int rc;

 frame = il4965_get_free_frame(il);
 if (!frame) {
  IL_ERR("Could not obtain free frame buffer for beacon "
         "command.\n");
  return -ENOMEM;
 }

 frame_size = il4965_hw_get_beacon_cmd(il, frame);
 if (!frame_size) {
  IL_ERR("Error configuring the beacon command\n");
  il4965_free_frame(il, frame);
  return -EINVAL;
 }

 rc = il_send_cmd_pdu(il, C_TX_BEACON, frame_size, &frame->u.cmd[0]);

 il4965_free_frame(il, frame);

 return rc;
}
