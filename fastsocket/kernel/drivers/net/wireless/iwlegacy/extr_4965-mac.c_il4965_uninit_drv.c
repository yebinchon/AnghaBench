
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int scan_cmd; } ;


 int il_free_channel_map (struct il_priv*) ;
 int il_free_geos (struct il_priv*) ;
 int kfree (int ) ;

__attribute__((used)) static void
il4965_uninit_drv(struct il_priv *il)
{
 il_free_geos(il);
 il_free_channel_map(il);
 kfree(il->scan_cmd);
}
