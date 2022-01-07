
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_4__ {char* ControllerName; int ControllerNumber; struct proc_dir_entry* ControllerProcEntry; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int * DAC960_ProcDirectoryEntry ;
 int S_IRUSR ;
 int S_IWUSR ;
 int dac960_current_status_proc_fops ;
 int dac960_initial_status_proc_fops ;
 int dac960_proc_fops ;
 int dac960_user_command_proc_fops ;
 struct proc_dir_entry* proc_create (char*,int ,int *,int *) ;
 struct proc_dir_entry* proc_create_data (char*,int,struct proc_dir_entry*,int *,TYPE_1__*) ;
 void* proc_mkdir (char*,int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void DAC960_CreateProcEntries(DAC960_Controller_T *Controller)
{
 struct proc_dir_entry *StatusProcEntry;
 struct proc_dir_entry *ControllerProcEntry;
 struct proc_dir_entry *UserCommandProcEntry;

 if (DAC960_ProcDirectoryEntry == ((void*)0)) {
    DAC960_ProcDirectoryEntry = proc_mkdir("rd", ((void*)0));
    StatusProcEntry = proc_create("status", 0,
        DAC960_ProcDirectoryEntry,
        &dac960_proc_fops);
 }

      sprintf(Controller->ControllerName, "c%d", Controller->ControllerNumber);
      ControllerProcEntry = proc_mkdir(Controller->ControllerName,
           DAC960_ProcDirectoryEntry);
      proc_create_data("initial_status", 0, ControllerProcEntry, &dac960_initial_status_proc_fops, Controller);
      proc_create_data("current_status", 0, ControllerProcEntry, &dac960_current_status_proc_fops, Controller);
      UserCommandProcEntry = proc_create_data("user_command", S_IWUSR | S_IRUSR, ControllerProcEntry, &dac960_user_command_proc_fops, Controller);
      Controller->ControllerProcEntry = ControllerProcEntry;
}
