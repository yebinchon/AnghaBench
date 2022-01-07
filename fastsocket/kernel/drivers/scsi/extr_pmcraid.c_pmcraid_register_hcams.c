
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int dummy; } ;


 int PMCRAID_HCAM_CODE_CONFIG_CHANGE ;
 int PMCRAID_HCAM_CODE_LOG_DATA ;
 int pmcraid_send_hcam (struct pmcraid_instance*,int ) ;

__attribute__((used)) static void pmcraid_register_hcams(struct pmcraid_instance *pinstance)
{
 pmcraid_send_hcam(pinstance, PMCRAID_HCAM_CODE_CONFIG_CHANGE);
 pmcraid_send_hcam(pinstance, PMCRAID_HCAM_CODE_LOG_DATA);
}
