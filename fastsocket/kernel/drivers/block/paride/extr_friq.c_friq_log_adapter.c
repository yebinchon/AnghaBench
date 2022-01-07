
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t device; size_t mode; int private; int delay; int port; } ;
typedef TYPE_1__ PIA ;


 int CMD (int) ;
 char* FRIQ_VERSION ;
 int friq_connect (TYPE_1__*) ;
 int friq_disconnect (TYPE_1__*) ;
 int printk (char*,size_t,char*,int ) ;

__attribute__((used)) static void friq_log_adapter( PIA *pi, char * scratch, int verbose )

{ char *mode_string[6] = {"4-bit","8-bit",
       "EPP-8","EPP-16","EPP-32"};

        printk("%s: friq %s, Freecom IQ ASIC-2 adapter at 0x%x, ", pi->device,
  FRIQ_VERSION,pi->port);
        printk("mode %d (%s), delay %d\n",pi->mode,
  mode_string[pi->mode],pi->delay);

 pi->private = 1;
 friq_connect(pi);
 CMD(0x9e);
 friq_disconnect(pi);

}
