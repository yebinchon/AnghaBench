
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t device; size_t mode; int delay; int port; } ;
typedef TYPE_1__ PIA ;


 char* COMM_VERSION ;
 int printk (char*,size_t,char*,int ) ;

__attribute__((used)) static void comm_log_adapter( PIA *pi, char * scratch, int verbose )

{ char *mode_string[5] = {"4-bit","8-bit","EPP-8","EPP-16","EPP-32"};

        printk("%s: comm %s, DataStor Commuter at 0x%x, ",
                pi->device,COMM_VERSION,pi->port);
        printk("mode %d (%s), delay %d\n",pi->mode,
  mode_string[pi->mode],pi->delay);

}
