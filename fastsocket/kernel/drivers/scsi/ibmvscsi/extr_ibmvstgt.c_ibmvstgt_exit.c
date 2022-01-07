
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int ibmvstgt_driver ;
 int ibmvstgt_transport_template ;
 int printk (char*) ;
 int srp_release_transport (int ) ;
 int vio_unregister_driver (int *) ;
 int vtgtd ;

__attribute__((used)) static void ibmvstgt_exit(void)
{
 printk("Unregister IBM virtual SCSI driver\n");

 destroy_workqueue(vtgtd);
 vio_unregister_driver(&ibmvstgt_driver);
 srp_release_transport(ibmvstgt_transport_template);
}
