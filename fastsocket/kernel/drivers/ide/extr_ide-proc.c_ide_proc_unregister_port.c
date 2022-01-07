
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * proc; int name; } ;
typedef TYPE_1__ ide_hwif_t ;


 int hwif_entries ;
 int ide_remove_proc_entries (int *,int ) ;
 int proc_ide_root ;
 int remove_proc_entry (int ,int ) ;

void ide_proc_unregister_port(ide_hwif_t *hwif)
{
 if (hwif->proc) {
  ide_remove_proc_entries(hwif->proc, hwif_entries);
  remove_proc_entry(hwif->name, proc_ide_root);
  hwif->proc = ((void*)0);
 }
}
