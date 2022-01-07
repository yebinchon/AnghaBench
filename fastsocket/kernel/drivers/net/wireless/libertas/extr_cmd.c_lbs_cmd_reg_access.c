
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef void* u16 ;
struct lbs_offset_value {int value; int offset; } ;
struct cmd_ds_rf_reg_access {void* value; void* offset; void* action; } ;
struct cmd_ds_mac_reg_access {int value; void* offset; void* action; } ;
struct TYPE_2__ {int rfreg; int bbpreg; int macreg; } ;
struct cmd_ds_command {TYPE_1__ params; void* size; int command; } ;
struct cmd_ds_bbp_reg_access {void* value; void* offset; void* action; } ;





 int LBS_DEB_CMD ;
 int S_DS_GEN ;
 void* cpu_to_le16 (void*) ;
 int cpu_to_le32 (int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int lbs_cmd_reg_access(struct cmd_ds_command *cmdptr,
          u8 cmd_action, void *pdata_buf)
{
 struct lbs_offset_value *offval;

 lbs_deb_enter(LBS_DEB_CMD);

 offval = (struct lbs_offset_value *)pdata_buf;

 switch (le16_to_cpu(cmdptr->command)) {
 case 129:
  {
   struct cmd_ds_mac_reg_access *macreg;

   cmdptr->size =
       cpu_to_le16(sizeof (struct cmd_ds_mac_reg_access)
     + S_DS_GEN);
   macreg =
       (struct cmd_ds_mac_reg_access *)&cmdptr->params.
       macreg;

   macreg->action = cpu_to_le16(cmd_action);
   macreg->offset = cpu_to_le16((u16) offval->offset);
   macreg->value = cpu_to_le32(offval->value);

   break;
  }

 case 130:
  {
   struct cmd_ds_bbp_reg_access *bbpreg;

   cmdptr->size =
       cpu_to_le16(sizeof
          (struct cmd_ds_bbp_reg_access)
          + S_DS_GEN);
   bbpreg =
       (struct cmd_ds_bbp_reg_access *)&cmdptr->params.
       bbpreg;

   bbpreg->action = cpu_to_le16(cmd_action);
   bbpreg->offset = cpu_to_le16((u16) offval->offset);
   bbpreg->value = (u8) offval->value;

   break;
  }

 case 128:
  {
   struct cmd_ds_rf_reg_access *rfreg;

   cmdptr->size =
       cpu_to_le16(sizeof
          (struct cmd_ds_rf_reg_access) +
          S_DS_GEN);
   rfreg =
       (struct cmd_ds_rf_reg_access *)&cmdptr->params.
       rfreg;

   rfreg->action = cpu_to_le16(cmd_action);
   rfreg->offset = cpu_to_le16((u16) offval->offset);
   rfreg->value = (u8) offval->value;

   break;
  }

 default:
  break;
 }

 lbs_deb_leave(LBS_DEB_CMD);
 return 0;
}
