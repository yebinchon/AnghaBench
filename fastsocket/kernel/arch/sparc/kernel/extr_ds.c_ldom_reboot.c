
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ldom_set_var (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int sun4v_mach_sir () ;

void ldom_reboot(const char *boot_command)
{



 if (boot_command && strlen(boot_command)) {
  char full_boot_str[256];

  strcpy(full_boot_str, "boot ");
  strcpy(full_boot_str + strlen("boot "), boot_command);

  ldom_set_var("reboot-command", full_boot_str);
 }
 sun4v_mach_sir();
}
