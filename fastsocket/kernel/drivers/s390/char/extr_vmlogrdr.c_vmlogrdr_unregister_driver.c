
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_destroy (int *) ;
 int driver_attr_recording_status ;
 int driver_remove_file (int *,int *) ;
 int driver_unregister (int *) ;
 int iucv_unregister (int *,int) ;
 int * vmlogrdr_class ;
 int vmlogrdr_driver ;
 int vmlogrdr_iucv_handler ;

__attribute__((used)) static void vmlogrdr_unregister_driver(void)
{
 class_destroy(vmlogrdr_class);
 vmlogrdr_class = ((void*)0);
 driver_remove_file(&vmlogrdr_driver, &driver_attr_recording_status);
 driver_unregister(&vmlogrdr_driver);
 iucv_unregister(&vmlogrdr_iucv_handler, 1);
}
