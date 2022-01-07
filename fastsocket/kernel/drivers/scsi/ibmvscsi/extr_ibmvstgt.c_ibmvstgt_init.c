
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int create_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int get_system_info () ;
 int ibmvstgt_driver ;
 int ibmvstgt_transport_functions ;
 int ibmvstgt_transport_template ;
 int printk (char*) ;
 int srp_attach_transport (int *) ;
 int srp_release_transport (int ) ;
 int vio_register_driver (int *) ;
 int vtgtd ;

__attribute__((used)) static int ibmvstgt_init(void)
{
 int err = -ENOMEM;

 printk("IBM eServer i/pSeries Virtual SCSI Target Driver\n");

 ibmvstgt_transport_template =
  srp_attach_transport(&ibmvstgt_transport_functions);
 if (!ibmvstgt_transport_template)
  return err;

 vtgtd = create_workqueue("ibmvtgtd");
 if (!vtgtd)
  goto release_transport;

 err = get_system_info();
 if (err)
  goto destroy_wq;

 err = vio_register_driver(&ibmvstgt_driver);
 if (err)
  goto destroy_wq;

 return 0;
destroy_wq:
 destroy_workqueue(vtgtd);
release_transport:
 srp_release_transport(ibmvstgt_transport_template);
 return err;
}
