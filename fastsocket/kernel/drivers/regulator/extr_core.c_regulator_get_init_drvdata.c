
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {void* driver_data; } ;



void *regulator_get_init_drvdata(struct regulator_init_data *reg_init_data)
{
 return reg_init_data->driver_data;
}
