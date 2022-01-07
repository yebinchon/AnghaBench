
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_region_chan_11d {int dummy; } ;
struct lbs_private {int parsed_region_chan; scalar_t__ enable11d; } ;


 int memset (int *,int ,int) ;

void lbs_init_11d(struct lbs_private *priv)
{
 priv->enable11d = 0;
 memset(&(priv->parsed_region_chan), 0,
        sizeof(struct parsed_region_chan_11d));
 return;
}
