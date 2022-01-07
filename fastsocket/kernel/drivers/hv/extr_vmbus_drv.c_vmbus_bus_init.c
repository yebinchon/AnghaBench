
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int bus_unregister (int *) ;
 int driver_name ;
 int free_irq (int,int ) ;
 int hv_acpi_dev ;
 int hv_bus ;
 int hv_cleanup () ;
 int hv_init () ;
 int hv_register_vmbus_handler (int,int ) ;
 int hv_synic_alloc () ;
 int hv_synic_free () ;
 int hv_synic_init ;
 int msg_dpc ;
 int on_each_cpu (int ,int *,int) ;
 int pr_err (char*,int) ;
 int request_irq (int,int ,int ,int ,int ) ;
 int set_irq_handler (int,int ) ;
 int tasklet_init (int *,int ,int ) ;
 int vmbus_connect () ;
 int vmbus_flow_handler ;
 int vmbus_isr ;
 int vmbus_on_msg_dpc ;
 int vmbus_request_offers () ;

__attribute__((used)) static int vmbus_bus_init(int irq)
{
 int ret;


 ret = hv_init();
 if (ret != 0) {
  pr_err("Unable to initialize the hypervisor - 0x%x\n", ret);
  return ret;
 }

 tasklet_init(&msg_dpc, vmbus_on_msg_dpc, 0);

 ret = bus_register(&hv_bus);
 if (ret)
  goto err_cleanup;

 ret = request_irq(irq, vmbus_isr, 0, driver_name, hv_acpi_dev);

 if (ret != 0) {
  pr_err("Unable to request IRQ %d\n",
      irq);
  goto err_unregister;
 }






 set_irq_handler(irq, vmbus_flow_handler);




 hv_register_vmbus_handler(irq, vmbus_isr);

 ret = hv_synic_alloc();
 if (ret)
  goto err_alloc;




 on_each_cpu(hv_synic_init, ((void*)0), 1);
 ret = vmbus_connect();
 if (ret)
  goto err_alloc;

 vmbus_request_offers();

 return 0;

err_alloc:
 hv_synic_free();
 free_irq(irq, hv_acpi_dev);

err_unregister:
 bus_unregister(&hv_bus);

err_cleanup:
 hv_cleanup();

 return ret;
}
