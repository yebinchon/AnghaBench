
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset_system ) (int ,int ,int ,int *) ;} ;


 int DIE_MACHINE_RESTART ;
 int EFI_RESET_WARM ;
 TYPE_1__ efi ;
 int notify_die (int ,char*,int *,int ,int ,int ) ;
 int stub1 (int ,int ,int ,int *) ;

void
machine_restart (char *restart_cmd)
{
 (void) notify_die(DIE_MACHINE_RESTART, restart_cmd, ((void*)0), 0, 0, 0);
 (*efi.reset_system)(EFI_RESET_WARM, 0, 0, ((void*)0));
}
