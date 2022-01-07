
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; int ieee_rates; int ieee_channels; } ;


 int S_GEO_CONFIGURED ;
 int clear_bit (int ,int *) ;
 int kfree (int ) ;

void
il_free_geos(struct il_priv *il)
{
 kfree(il->ieee_channels);
 kfree(il->ieee_rates);
 clear_bit(S_GEO_CONFIGURED, &il->status);
}
