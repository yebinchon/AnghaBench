
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioa_cfg {int hrrq_num; int hrrq_index; } ;


 int atomic_add_return (int,int *) ;

__attribute__((used)) static int ipr_get_hrrq_index(struct ipr_ioa_cfg *ioa_cfg)
{
 if (ioa_cfg->hrrq_num == 1)
  return 0;
 else
  return (atomic_add_return(1, &ioa_cfg->hrrq_index) % (ioa_cfg->hrrq_num - 1)) + 1;
}
