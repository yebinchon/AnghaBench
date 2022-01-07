
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int port_count; scalar_t__* port_array; } ;


 int reset_port (scalar_t__) ;

__attribute__((used)) static void reset_adapter(struct slgt_info *info)
{
 int i;
 for (i=0; i < info->port_count; ++i) {
  if (info->port_array[i])
   reset_port(info->port_array[i]);
 }
}
