
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int can_queue; int cmd_per_lun; int max_sectors; } ;


 int SBP2_ERR (char*) ;
 int hpsb_register_highlevel (int *) ;
 int hpsb_register_protocol (int *) ;
 int hpsb_unregister_highlevel (int *) ;
 int sbp2_driver ;
 int sbp2_highlevel ;
 int sbp2_max_sectors ;
 scalar_t__ sbp2_serialize_io ;
 TYPE_1__ sbp2_shost_template ;

__attribute__((used)) static int sbp2_module_init(void)
{
 int ret;

 if (sbp2_serialize_io) {
  sbp2_shost_template.can_queue = 1;
  sbp2_shost_template.cmd_per_lun = 1;
 }

 sbp2_shost_template.max_sectors = sbp2_max_sectors;

 hpsb_register_highlevel(&sbp2_highlevel);
 ret = hpsb_register_protocol(&sbp2_driver);
 if (ret) {
  SBP2_ERR("Failed to register protocol");
  hpsb_unregister_highlevel(&sbp2_highlevel);
  return ret;
 }
 return 0;
}
