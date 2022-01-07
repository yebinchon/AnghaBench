
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ init_called; scalar_t__ acpi_driver_registered; scalar_t__ proc_created; scalar_t__ acpi_notify_installed; } ;
struct ibm_struct {int name; TYPE_2__ flags; int (* exit ) () ;TYPE_1__* acpi; int all_drivers; } ;
struct TYPE_3__ {int * driver; int type; int * handle; } ;


 int BUG_ON (int) ;
 int TPACPI_DBG_EXIT ;
 int TPACPI_DBG_INIT ;
 int acpi_bus_unregister_driver (int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int dbg_printk (int ,char*,int ) ;
 int dispatch_acpi_notify ;
 int kfree (int *) ;
 int list_del_init (int *) ;
 int proc_dir ;
 int remove_proc_entry (int ,int ) ;
 int stub1 () ;

__attribute__((used)) static void ibm_exit(struct ibm_struct *ibm)
{
 dbg_printk(TPACPI_DBG_EXIT, "removing %s\n", ibm->name);

 list_del_init(&ibm->all_drivers);

 if (ibm->flags.acpi_notify_installed) {
  dbg_printk(TPACPI_DBG_EXIT,
   "%s: acpi_remove_notify_handler\n", ibm->name);
  BUG_ON(!ibm->acpi);
  acpi_remove_notify_handler(*ibm->acpi->handle,
        ibm->acpi->type,
        dispatch_acpi_notify);
  ibm->flags.acpi_notify_installed = 0;
  ibm->flags.acpi_notify_installed = 0;
 }

 if (ibm->flags.proc_created) {
  dbg_printk(TPACPI_DBG_EXIT,
   "%s: remove_proc_entry\n", ibm->name);
  remove_proc_entry(ibm->name, proc_dir);
  ibm->flags.proc_created = 0;
 }

 if (ibm->flags.acpi_driver_registered) {
  dbg_printk(TPACPI_DBG_EXIT,
   "%s: acpi_bus_unregister_driver\n", ibm->name);
  BUG_ON(!ibm->acpi);
  acpi_bus_unregister_driver(ibm->acpi->driver);
  kfree(ibm->acpi->driver);
  ibm->acpi->driver = ((void*)0);
  ibm->flags.acpi_driver_registered = 0;
 }

 if (ibm->flags.init_called && ibm->exit) {
  ibm->exit();
  ibm->flags.init_called = 0;
 }

 dbg_printk(TPACPI_DBG_INIT, "finished removing %s\n", ibm->name);
}
