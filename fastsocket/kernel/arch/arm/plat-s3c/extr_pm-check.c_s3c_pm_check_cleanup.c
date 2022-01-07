
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * crcs ;
 int kfree (int *) ;

void s3c_pm_check_cleanup(void)
{
 kfree(crcs);
 crcs = ((void*)0);
}
