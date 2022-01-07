
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_file_private {int dummy; } ;
struct TYPE_2__ {int current_controller; } ;


 int DBG (char*) ;
 int agp_controller_release_current (int ,struct agp_file_private*) ;
 TYPE_1__ agp_fe ;

int agpioc_release_wrap(struct agp_file_private *priv)
{
 DBG("");
 agp_controller_release_current(agp_fe.current_controller, priv);
 return 0;
}
