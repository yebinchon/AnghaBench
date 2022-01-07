
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aem_data {int dummy; } ;


 int aem1_ro_sensors ;
 int aem1_rw_sensors ;
 int aem_register_sensors (struct aem_data*,int ,int ) ;

__attribute__((used)) static int aem1_find_sensors(struct aem_data *data)
{
 return aem_register_sensors(data, aem1_ro_sensors, aem1_rw_sensors);
}
