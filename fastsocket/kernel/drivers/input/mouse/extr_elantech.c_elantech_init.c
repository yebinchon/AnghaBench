
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int pktsize; int reconnect; int disconnect; int protocol_handler; TYPE_3__ ps2dev; struct elantech_data* private; } ;
struct elantech_data {int* parity; unsigned char fw_version_maj; unsigned char fw_version_min; int hw_version; int debug; int paritycheck; unsigned char capabilities; int jumpy_cursor; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int ETP_CAPABILITIES_QUERY ;
 int ETP_FW_VERSION_QUERY ;
 int GFP_KERNEL ;
 int elantech_attr_group ;
 int elantech_disconnect ;
 int elantech_process_byte ;
 int elantech_reconnect ;
 scalar_t__ elantech_set_absolute_mode (struct psmouse*) ;
 int elantech_set_input_params (struct psmouse*) ;
 int kfree (struct elantech_data*) ;
 struct elantech_data* kzalloc (int,int ) ;
 int pr_err (char*,...) ;
 int pr_info (char*,...) ;
 scalar_t__ synaptics_send_cmd (struct psmouse*,int ,unsigned char*) ;
 int sysfs_create_group (int *,int *) ;

int elantech_init(struct psmouse *psmouse)
{
 struct elantech_data *etd;
 int i, error;
 unsigned char param[3];

 psmouse->private = etd = kzalloc(sizeof(struct elantech_data), GFP_KERNEL);
 if (!etd)
  return -1;

 etd->parity[0] = 1;
 for (i = 1; i < 256; i++)
  etd->parity[i] = etd->parity[i & (i - 1)] ^ 1;




 if (synaptics_send_cmd(psmouse, ETP_FW_VERSION_QUERY, param)) {
  pr_err("elantech.c: failed to query firmware version.\n");
  goto init_fail;
 }
 etd->fw_version_maj = param[0];
 etd->fw_version_min = param[2];





 if (etd->fw_version_maj >= 0x02 && etd->fw_version_min >= 0x30) {
  etd->hw_version = 2;

  etd->debug = 1;

  etd->paritycheck = 0;
 } else {
  etd->hw_version = 1;
  etd->paritycheck = 1;
 }
 pr_info("elantech.c: assuming hardware version %d, firmware version %d.%d\n",
  etd->hw_version, etd->fw_version_maj, etd->fw_version_min);

 if (synaptics_send_cmd(psmouse, ETP_CAPABILITIES_QUERY, param)) {
  pr_err("elantech.c: failed to query capabilities.\n");
  goto init_fail;
 }
 pr_info("elantech.c: Synaptics capabilities query result 0x%02x, 0x%02x, 0x%02x.\n",
  param[0], param[1], param[2]);
 etd->capabilities = param[0];






 if (etd->fw_version_maj == 0x02 && etd->fw_version_min == 0x22) {
  pr_info("elantech.c: firmware version 2.34 detected, "
   "enabling jumpy cursor workaround\n");
  etd->jumpy_cursor = 1;
 }

 if (elantech_set_absolute_mode(psmouse)) {
  pr_err("elantech.c: failed to put touchpad into absolute mode.\n");
  goto init_fail;
 }

 elantech_set_input_params(psmouse);

 error = sysfs_create_group(&psmouse->ps2dev.serio->dev.kobj,
       &elantech_attr_group);
 if (error) {
  pr_err("elantech.c: failed to create sysfs attributes, error: %d.\n",
   error);
  goto init_fail;
 }

 psmouse->protocol_handler = elantech_process_byte;
 psmouse->disconnect = elantech_disconnect;
 psmouse->reconnect = elantech_reconnect;
 psmouse->pktsize = etd->hw_version == 2 ? 6 : 4;

 return 0;

 init_fail:
 kfree(etd);
 return -1;
}
