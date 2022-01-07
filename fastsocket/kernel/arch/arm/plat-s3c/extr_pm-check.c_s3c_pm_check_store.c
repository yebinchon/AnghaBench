
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * crcs ;
 int s3c_pm_makecheck ;
 int s3c_pm_run_sysram (int ,int *) ;

void s3c_pm_check_store(void)
{
 if (crcs != ((void*)0))
  s3c_pm_run_sysram(s3c_pm_makecheck, crcs);
}
