
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccdc_hw_dev ;
 int vpfe_unregister_ccdc_device (int *) ;

__attribute__((used)) static void dm355_ccdc_exit(void)
{
 vpfe_unregister_ccdc_device(&ccdc_hw_dev);
}
