
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int stat_string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* mv643xx_eth_stats ;

__attribute__((used)) static void mv643xx_eth_get_strings(struct net_device *dev,
        uint32_t stringset, uint8_t *data)
{
 int i;

 if (stringset == ETH_SS_STATS) {
  for (i = 0; i < ARRAY_SIZE(mv643xx_eth_stats); i++) {
   memcpy(data + i * ETH_GSTRING_LEN,
    mv643xx_eth_stats[i].stat_string,
    ETH_GSTRING_LEN);
  }
 }
}
