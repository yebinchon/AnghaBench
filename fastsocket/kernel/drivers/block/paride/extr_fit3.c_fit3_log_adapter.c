
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t mode; int delay; int port; int device; } ;
typedef TYPE_1__ PIA ;


 int FIT3_VERSION ;
 int printk (char*,int ,int ,int ,size_t,char*,int ) ;

__attribute__((used)) static void fit3_log_adapter( PIA *pi, char * scratch, int verbose )

{ char *mode_string[3] = {"4-bit","8-bit","EPP"};

 printk("%s: fit3 %s, FIT 3000 adapter at 0x%x, "
        "mode %d (%s), delay %d\n",
                pi->device,FIT3_VERSION,pi->port,
  pi->mode,mode_string[pi->mode],pi->delay);

}
