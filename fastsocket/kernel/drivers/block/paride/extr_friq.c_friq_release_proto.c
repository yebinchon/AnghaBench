
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ private; } ;
typedef TYPE_1__ PIA ;


 int CMD (int) ;
 int friq_connect (TYPE_1__*) ;
 int friq_disconnect (TYPE_1__*) ;

__attribute__((used)) static void friq_release_proto( PIA *pi)
{
 if (pi->private) {
  friq_connect(pi);
  CMD(0x1d); CMD(0x1e);
  friq_disconnect(pi);
  pi->private = 0;
 }
}
