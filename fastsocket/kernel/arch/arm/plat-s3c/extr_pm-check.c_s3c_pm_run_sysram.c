
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int run_fn_t ;


 int iomem_resource ;
 int s3c_pm_run_res (int *,int ,int *) ;

__attribute__((used)) static void s3c_pm_run_sysram(run_fn_t fn, u32 *arg)
{
 s3c_pm_run_res(&iomem_resource, fn, arg);
}
