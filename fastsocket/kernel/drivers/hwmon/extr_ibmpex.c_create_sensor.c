
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ibmpex_bmc_data {TYPE_3__* sensors; int bmc_device; } ;
struct TYPE_5__ {char* name; int mode; } ;
struct TYPE_8__ {TYPE_1__ attr; int show; } ;
struct TYPE_7__ {TYPE_2__* attr; } ;
struct TYPE_6__ {int index; int nr; TYPE_4__ dev_attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int POWER_SENSOR ;
 int S_IRUGO ;
 int TEMP_SENSOR ;
 int device_create_file (int ,TYPE_4__*) ;
 int ibmpex_show_sensor ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 char** power_sensor_name_templates ;
 int sprintf (char*,char*,char*,int) ;
 char** temp_sensor_name_templates ;

__attribute__((used)) static int create_sensor(struct ibmpex_bmc_data *data, int type,
    int counter, int sensor, int func)
{
 int err;
 char *n;

 n = kmalloc(32, GFP_KERNEL);
 if (!n)
  return -ENOMEM;

 if (type == TEMP_SENSOR)
  sprintf(n, temp_sensor_name_templates[func], "temp", counter);
 else if (type == POWER_SENSOR)
  sprintf(n, power_sensor_name_templates[func], "power", counter);

 data->sensors[sensor].attr[func].dev_attr.attr.name = n;
 data->sensors[sensor].attr[func].dev_attr.attr.mode = S_IRUGO;
 data->sensors[sensor].attr[func].dev_attr.show = ibmpex_show_sensor;
 data->sensors[sensor].attr[func].index = sensor;
 data->sensors[sensor].attr[func].nr = func;

 err = device_create_file(data->bmc_device,
     &data->sensors[sensor].attr[func].dev_attr);
 if (err) {
  data->sensors[sensor].attr[func].dev_attr.attr.name = ((void*)0);
  kfree(n);
  return err;
 }

 return 0;
}
