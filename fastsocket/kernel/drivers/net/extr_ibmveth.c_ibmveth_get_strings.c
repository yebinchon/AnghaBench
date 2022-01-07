
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 TYPE_1__* ibmveth_stats ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void ibmveth_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 int i;

 if (stringset != ETH_SS_STATS)
  return;

 for (i = 0; i < ARRAY_SIZE(ibmveth_stats); i++, data += ETH_GSTRING_LEN)
  memcpy(data, ibmveth_stats[i].name, ETH_GSTRING_LEN);
}
