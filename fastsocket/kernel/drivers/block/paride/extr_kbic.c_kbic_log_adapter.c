
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t mode; int delay; int port; int device; } ;
typedef TYPE_1__ PIA ;


 int KBIC_VERSION ;
 int printk (char*,size_t,char*,char*,...) ;

__attribute__((used)) static void kbic_log_adapter( PIA *pi, char * scratch,
         int verbose, char * chip )

{ char *mode_string[6] = {"4-bit","5/3","8-bit",
       "EPP-8","EPP_16","EPP-32"};

        printk("%s: kbic %s, KingByte %s at 0x%x, ",
                pi->device,KBIC_VERSION,chip,pi->port);
        printk("mode %d (%s), delay %d\n",pi->mode,
  mode_string[pi->mode],pi->delay);

}
