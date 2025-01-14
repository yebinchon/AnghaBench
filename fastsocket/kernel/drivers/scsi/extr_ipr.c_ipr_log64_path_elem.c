
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ipr_hostrcb64_config_element {scalar_t__ descriptor_id; scalar_t__ type_status; size_t link_rate; int * wwid; int res_path; } ;
struct ipr_hostrcb {int ioa_cfg; } ;
typedef int buffer ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ status; int desc; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ IPR_DESCRIPTOR_MASK ;
 scalar_t__ IPR_DESCRIPTOR_SIS64 ;
 int IPR_MAX_RES_PATH_LENGTH ;
 scalar_t__ IPR_PATH_CFG_NOT_EXIST ;
 scalar_t__ IPR_PATH_CFG_STATUS_MASK ;
 scalar_t__ IPR_PATH_CFG_TYPE_MASK ;
 size_t IPR_PHY_LINK_RATE_MASK ;
 int be32_to_cpu (int ) ;
 int ipr_format_res_path (int ,int ,char*,int) ;
 int ipr_hcam_err (struct ipr_hostrcb*,char*,scalar_t__,int ,int ,int ,int ,...) ;
 int * link_rate ;
 TYPE_1__* path_status_desc ;
 TYPE_1__* path_type_desc ;

__attribute__((used)) static void ipr_log64_path_elem(struct ipr_hostrcb *hostrcb,
    struct ipr_hostrcb64_config_element *cfg)
{
 int i, j;
 u8 desc_id = cfg->descriptor_id & IPR_DESCRIPTOR_MASK;
 u8 type = cfg->type_status & IPR_PATH_CFG_TYPE_MASK;
 u8 status = cfg->type_status & IPR_PATH_CFG_STATUS_MASK;
 char buffer[IPR_MAX_RES_PATH_LENGTH];

 if (type == IPR_PATH_CFG_NOT_EXIST || desc_id != IPR_DESCRIPTOR_SIS64)
  return;

 for (i = 0; i < ARRAY_SIZE(path_type_desc); i++) {
  if (path_type_desc[i].type != type)
   continue;

  for (j = 0; j < ARRAY_SIZE(path_status_desc); j++) {
   if (path_status_desc[j].status != status)
    continue;

   ipr_hcam_err(hostrcb, "%s %s: Resource Path=%s, Link rate=%s, WWN=%08X%08X\n",
         path_status_desc[j].desc, path_type_desc[i].desc,
         ipr_format_res_path(hostrcb->ioa_cfg,
     cfg->res_path, buffer, sizeof(buffer)),
     link_rate[cfg->link_rate & IPR_PHY_LINK_RATE_MASK],
     be32_to_cpu(cfg->wwid[0]),
     be32_to_cpu(cfg->wwid[1]));
   return;
  }
 }
 ipr_hcam_err(hostrcb, "Path element=%02X: Resource Path=%s, Link rate=%s "
       "WWN=%08X%08X\n", cfg->type_status,
       ipr_format_res_path(hostrcb->ioa_cfg,
   cfg->res_path, buffer, sizeof(buffer)),
   link_rate[cfg->link_rate & IPR_PHY_LINK_RATE_MASK],
   be32_to_cpu(cfg->wwid[0]), be32_to_cpu(cfg->wwid[1]));
}
