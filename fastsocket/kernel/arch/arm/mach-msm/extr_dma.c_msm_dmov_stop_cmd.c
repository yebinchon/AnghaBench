
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dmov_cmd {int dummy; } ;


 int DMOV_FLUSH0 (unsigned int) ;
 int writel (int,int ) ;

void msm_dmov_stop_cmd(unsigned id, struct msm_dmov_cmd *cmd, int graceful)
{
 writel((graceful << 31), DMOV_FLUSH0(id));
}
