
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct atmel_private {scalar_t__ reg_domain; } ;
struct TYPE_3__ {scalar_t__ reg_domain; int min; int max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* channel_table ;

__attribute__((used)) static int atmel_validate_channel(struct atmel_private *priv, int channel)
{


 int i;

 for (i = 0; i < ARRAY_SIZE(channel_table); i++)
  if (priv->reg_domain == channel_table[i].reg_domain) {
   if (channel >= channel_table[i].min &&
       channel <= channel_table[i].max)
    return 0;
   else
    return channel_table[i].min;
  }
 return 0;
}
