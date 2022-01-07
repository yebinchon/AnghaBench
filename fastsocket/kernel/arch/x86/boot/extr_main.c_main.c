
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loadflags; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 int QUIET_FLAG ;
 TYPE_2__ boot_params ;
 scalar_t__ cmdline_find_option_bool (char*) ;
 int copy_boot_params () ;
 int detect_memory () ;
 int die () ;
 int go_to_protected_mode () ;
 int init_heap () ;
 int keyboard_set_repeat () ;
 int puts (char*) ;
 int query_apm_bios () ;
 int query_edd () ;
 int query_ist () ;
 int query_mca () ;
 int set_bios_mode () ;
 int set_video () ;
 scalar_t__ validate_cpu () ;

void main(void)
{

 copy_boot_params();


 init_heap();


 if (validate_cpu()) {
  puts("Unable to boot - please use a kernel appropriate "
       "for your CPU.\n");
  die();
 }


 set_bios_mode();


 detect_memory();


 keyboard_set_repeat();


 query_mca();


 query_ist();
 set_video();


 if (cmdline_find_option_bool("quiet"))
  boot_params.hdr.loadflags |= QUIET_FLAG;


 go_to_protected_mode();
}
