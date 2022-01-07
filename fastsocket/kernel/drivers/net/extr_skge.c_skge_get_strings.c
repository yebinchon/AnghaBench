
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;

 int memcpy (int *,int ,int) ;
 TYPE_1__* skge_stats ;

__attribute__((used)) static void skge_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(skge_stats); i++)
   memcpy(data + i * ETH_GSTRING_LEN,
          skge_stats[i].name, ETH_GSTRING_LEN);
  break;
 }
}
