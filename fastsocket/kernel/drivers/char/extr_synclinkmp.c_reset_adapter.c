
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* port_array; } ;
typedef TYPE_1__ SLMP_INFO ;


 int SCA_MAX_PORTS ;
 int reset_port (scalar_t__) ;

__attribute__((used)) static void reset_adapter(SLMP_INFO *info)
{
 int i;

 for ( i=0; i < SCA_MAX_PORTS; ++i) {
  if (info->port_array[i])
   reset_port(info->port_array[i]);
 }
}
