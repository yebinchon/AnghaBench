
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private; size_t mode; int delay; int port; int device; } ;
typedef TYPE_1__ PIA ;


 int FRPW_VERSION ;
 int printk (char*,size_t,char*,char*,...) ;

__attribute__((used)) static void frpw_log_adapter( PIA *pi, char * scratch, int verbose )

{ char *mode_string[6] = {"4-bit","8-bit","EPP",
       "EPP-8","EPP-16","EPP-32"};

        printk("%s: frpw %s, Freecom (%s) adapter at 0x%x, ", pi->device,
  FRPW_VERSION,((pi->private%2) == 0)?"Xilinx":"ASIC",pi->port);
        printk("mode %d (%s), delay %d\n",pi->mode,
  mode_string[pi->mode],pi->delay);

}
