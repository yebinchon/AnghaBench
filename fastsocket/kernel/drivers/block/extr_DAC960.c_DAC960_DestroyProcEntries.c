
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ControllerName; int * ControllerProcEntry; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int * DAC960_ProcDirectoryEntry ;
 int remove_proc_entry (char*,int *) ;

__attribute__((used)) static void DAC960_DestroyProcEntries(DAC960_Controller_T *Controller)
{
      if (Controller->ControllerProcEntry == ((void*)0))
       return;
      remove_proc_entry("initial_status", Controller->ControllerProcEntry);
      remove_proc_entry("current_status", Controller->ControllerProcEntry);
      remove_proc_entry("user_command", Controller->ControllerProcEntry);
      remove_proc_entry(Controller->ControllerName, DAC960_ProcDirectoryEntry);
      Controller->ControllerProcEntry = ((void*)0);
}
