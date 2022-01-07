
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delay; int port; int device; } ;
typedef TYPE_1__ PIA ;


 int KTTI_VERSION ;
 int printk (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void ktti_log_adapter( PIA *pi, char * scratch, int verbose )

{ printk("%s: ktti %s, KT adapter at 0x%x, delay %d\n",
                pi->device,KTTI_VERSION,pi->port,pi->delay);

}
