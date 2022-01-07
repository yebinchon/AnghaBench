
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ipr_hostrcb64_fabric_desc {scalar_t__ path_state; int res_path; } ;
struct ipr_hostrcb {int ioa_cfg; } ;
typedef int buffer ;
struct TYPE_4__ {scalar_t__ active; scalar_t__ state; int desc; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IPR_MAX_RES_PATH_LENGTH ;
 scalar_t__ IPR_PATH_ACTIVE_MASK ;
 scalar_t__ IPR_PATH_STATE_MASK ;
 int ipr_err (char*,scalar_t__,int ) ;
 int ipr_format_res_path (int ,int ,char*,int) ;
 int ipr_hcam_err (struct ipr_hostrcb*,char*,int ,int ,int ) ;
 TYPE_1__* path_active_desc ;
 TYPE_1__* path_state_desc ;

__attribute__((used)) static void ipr_log64_fabric_path(struct ipr_hostrcb *hostrcb,
      struct ipr_hostrcb64_fabric_desc *fabric)
{
 int i, j;
 u8 path_state = fabric->path_state;
 u8 active = path_state & IPR_PATH_ACTIVE_MASK;
 u8 state = path_state & IPR_PATH_STATE_MASK;
 char buffer[IPR_MAX_RES_PATH_LENGTH];

 for (i = 0; i < ARRAY_SIZE(path_active_desc); i++) {
  if (path_active_desc[i].active != active)
   continue;

  for (j = 0; j < ARRAY_SIZE(path_state_desc); j++) {
   if (path_state_desc[j].state != state)
    continue;

   ipr_hcam_err(hostrcb, "%s %s: Resource Path=%s\n",
         path_active_desc[i].desc, path_state_desc[j].desc,
         ipr_format_res_path(hostrcb->ioa_cfg,
      fabric->res_path,
      buffer, sizeof(buffer)));
   return;
  }
 }

 ipr_err("Path state=%02X Resource Path=%s\n", path_state,
  ipr_format_res_path(hostrcb->ioa_cfg, fabric->res_path,
        buffer, sizeof(buffer)));
}
