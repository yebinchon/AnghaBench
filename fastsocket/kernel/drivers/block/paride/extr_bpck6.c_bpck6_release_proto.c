
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ private; } ;
typedef TYPE_1__ PIA ;


 int kfree (void*) ;

__attribute__((used)) static void bpck6_release_proto(PIA *pi)
{
 kfree((void *)(pi->private));
}
