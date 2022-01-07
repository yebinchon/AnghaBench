
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct con_driver {int flag; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int CON_DRIVER_FLAG_ATTR ;
 int * device_attrs ;
 int device_remove_file (int ,int *) ;

__attribute__((used)) static void vtconsole_deinit_device(struct con_driver *con)
{
 int i;

 if (con->flag & CON_DRIVER_FLAG_ATTR) {
  for (i = 0; i < ARRAY_SIZE(device_attrs); i++)
   device_remove_file(con->dev, &device_attrs[i]);
  con->flag &= ~CON_DRIVER_FLAG_ATTR;
 }
}
