
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_file_private {int dummy; } ;


 int DBG (char*) ;
 int agp_bridge ;
 int agp_flush_chipset (int ) ;

int agpioc_chipset_flush_wrap(struct agp_file_private *priv)
{
 DBG("");
 agp_flush_chipset(agp_bridge);
 return 0;
}
