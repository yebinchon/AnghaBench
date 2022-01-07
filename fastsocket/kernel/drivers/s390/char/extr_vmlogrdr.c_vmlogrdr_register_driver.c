
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int THIS_MODULE ;
 int * class_create (int ,char*) ;
 int driver_attr_recording_status ;
 int driver_create_file (int *,int *) ;
 int driver_register (int *) ;
 int driver_remove_file (int *,int *) ;
 int driver_unregister (int *) ;
 int iucv_register (int *,int) ;
 int iucv_unregister (int *,int) ;
 int * vmlogrdr_class ;
 int vmlogrdr_driver ;
 int vmlogrdr_iucv_handler ;

__attribute__((used)) static int vmlogrdr_register_driver(void)
{
 int ret;


 ret = iucv_register(&vmlogrdr_iucv_handler, 1);
 if (ret)
  goto out;

 ret = driver_register(&vmlogrdr_driver);
 if (ret)
  goto out_iucv;

 ret = driver_create_file(&vmlogrdr_driver,
     &driver_attr_recording_status);
 if (ret)
  goto out_driver;

 vmlogrdr_class = class_create(THIS_MODULE, "vmlogrdr");
 if (IS_ERR(vmlogrdr_class)) {
  ret = PTR_ERR(vmlogrdr_class);
  vmlogrdr_class = ((void*)0);
  goto out_attr;
 }
 return 0;

out_attr:
 driver_remove_file(&vmlogrdr_driver, &driver_attr_recording_status);
out_driver:
 driver_unregister(&vmlogrdr_driver);
out_iucv:
 iucv_unregister(&vmlogrdr_iucv_handler, 1);
out:
 return ret;
}
