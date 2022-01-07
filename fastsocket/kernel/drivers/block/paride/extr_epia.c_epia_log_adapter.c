
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t device; size_t mode; int delay; int port; } ;
typedef TYPE_1__ PIA ;


 char* EPIA_VERSION ;
 int printk (char*,size_t,char*,int ) ;

__attribute__((used)) static void epia_log_adapter( PIA *pi, char * scratch, int verbose )

{ char *mode_string[6] = {"4-bit","5/3","8-bit",
       "EPP-8","EPP-16","EPP-32"};

        printk("%s: epia %s, Shuttle EPIA at 0x%x, ",
                pi->device,EPIA_VERSION,pi->port);
        printk("mode %d (%s), delay %d\n",pi->mode,
  mode_string[pi->mode],pi->delay);

}
