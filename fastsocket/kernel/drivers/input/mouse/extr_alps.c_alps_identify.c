
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct alps_data* private; } ;
struct alps_data {void* proto_version; int flags; int decode_fields; int hw_init; } ;


 int ALPS_DUALPOINT ;
 void* ALPS_PROTO_V3 ;
 void* ALPS_PROTO_V5 ;
 int ALPS_REG_BASE_RUSHMORE ;
 int EINVAL ;
 int EIO ;
 int PSMOUSE_CMD_RESET_WRAP ;
 int PSMOUSE_CMD_SETRES ;
 int PSMOUSE_CMD_SETSCALE11 ;
 int PSMOUSE_CMD_SETSCALE21 ;
 int alps_decode_rushmore ;
 scalar_t__ alps_exit_command_mode (struct psmouse*) ;
 int alps_hw_init_rushmore_v3 ;
 scalar_t__ alps_match_table (struct psmouse*,struct alps_data*,unsigned char*,unsigned char*) ;
 scalar_t__ alps_probe_trackstick_v3 (struct psmouse*,int ) ;
 scalar_t__ alps_rpt_cmd (struct psmouse*,int ,int ,unsigned char*) ;
 int alps_set_defaults (struct alps_data*) ;
 int dbg (char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static int alps_identify(struct psmouse *psmouse, struct alps_data *priv)
{
 unsigned char e6[4], e7[4], ec[4];







 if (alps_rpt_cmd(psmouse, PSMOUSE_CMD_SETRES,
    PSMOUSE_CMD_SETSCALE11, e6))
  return -EIO;

 if ((e6[0] & 0xf8) != 0 || e6[1] != 0 || (e6[2] != 10 && e6[2] != 100))
  return -EINVAL;





 if (alps_rpt_cmd(psmouse, PSMOUSE_CMD_SETRES,
    PSMOUSE_CMD_SETSCALE21, e7) ||
     alps_rpt_cmd(psmouse, PSMOUSE_CMD_SETRES,
    PSMOUSE_CMD_RESET_WRAP, ec) ||
     alps_exit_command_mode(psmouse))
  return -EIO;

 if (alps_match_table(psmouse, priv, e7, ec) == 0) {
  return 0;
 } else if (e7[0] == 0x73 && e7[1] == 0x03 && e7[2] == 0x50 &&
     ec[0] == 0x73 && ec[1] == 0x01) {
  priv->proto_version = ALPS_PROTO_V5;
  alps_set_defaults(priv);

  return 0;
 } else if (ec[0] == 0x88 && ec[1] == 0x08) {
  priv->proto_version = ALPS_PROTO_V3;
  alps_set_defaults(priv);

  priv->hw_init = alps_hw_init_rushmore_v3;
  priv->decode_fields = alps_decode_rushmore;


  psmouse->private = priv;

  if (alps_probe_trackstick_v3(psmouse, ALPS_REG_BASE_RUSHMORE))
   priv->flags &= ~ALPS_DUALPOINT;

  return 0;
 } else if (ec[0] == 0x88 && ec[1] == 0x07 &&
     ec[2] >= 0x90 && ec[2] <= 0x9d) {
  priv->proto_version = ALPS_PROTO_V3;
  alps_set_defaults(priv);

  return 0;
 }

 dbg("Unknown ALPS touchpad: E7=%2.2x %2.2x %2.2x, EC=%2.2x %2.2x %2.2x\n",
     e7[0], e7[1], e7[2], ec[0], ec[1], ec[2]);

 return -EINVAL;
}
