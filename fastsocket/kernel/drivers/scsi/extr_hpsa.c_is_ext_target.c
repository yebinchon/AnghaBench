
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int model; } ;
struct ctlr_info {int dummy; } ;


 scalar_t__* ext_target_model ;
 int strlen (scalar_t__) ;
 scalar_t__ strncmp (int ,scalar_t__,int ) ;

__attribute__((used)) static int is_ext_target(struct ctlr_info *h, struct hpsa_scsi_dev_t *device)
{
 int i;

 for (i = 0; ext_target_model[i]; i++)
  if (strncmp(device->model, ext_target_model[i],
   strlen(ext_target_model[i])) == 0)
   return 1;
 return 0;
}
