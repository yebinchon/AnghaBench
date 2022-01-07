
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_cmd {int dummy; } ;


 int PMCRAID_HCAM_CODE_LOG_DATA ;
 int pmcraid_cancel_ccn ;
 int pmcraid_cancel_hcam (struct pmcraid_cmd*,int ,int ) ;

__attribute__((used)) static void pmcraid_cancel_ldn(struct pmcraid_cmd *cmd)
{
 pmcraid_cancel_hcam(cmd,
       PMCRAID_HCAM_CODE_LOG_DATA,
       pmcraid_cancel_ccn);
}
