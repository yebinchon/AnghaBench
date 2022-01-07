
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adapter_lock ;
 int diva_os_initialize_spin_lock (int *,char*) ;

int diva_user_mode_idi_init(void)
{
 diva_os_initialize_spin_lock(&adapter_lock, "adapter");
 return (0);
}
