
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8001_hba_info {int dummy; } ;


 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int pm8001_printk (char*) ;

__attribute__((used)) static int mpi_get_controller_config_resp(struct pm8001_hba_info *pm8001_ha,
   void *piomb)
{
 PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" pm80xx_addition_functionality\n"));

 return 0;
}
