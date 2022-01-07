
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct con_driver {int flag; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int CON_DRIVER_FLAG_ATTR ;
 int dev_set_drvdata (int ,struct con_driver*) ;
 int * device_attrs ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;

__attribute__((used)) static int vtconsole_init_device(struct con_driver *con)
{
 int i;
 int error = 0;

 con->flag |= CON_DRIVER_FLAG_ATTR;
 dev_set_drvdata(con->dev, con);
 for (i = 0; i < ARRAY_SIZE(device_attrs); i++) {
  error = device_create_file(con->dev, &device_attrs[i]);
  if (error)
   break;
 }

 if (error) {
  while (--i >= 0)
   device_remove_file(con->dev, &device_attrs[i]);
  con->flag &= ~CON_DRIVER_FLAG_ATTR;
 }

 return error;
}
