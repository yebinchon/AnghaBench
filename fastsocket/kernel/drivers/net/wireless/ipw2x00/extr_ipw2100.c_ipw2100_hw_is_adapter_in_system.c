
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;


 scalar_t__ IPW_DATA_DOA_DEBUG_VALUE ;
 int IPW_REG_DOA_DEBUG_AREA_START ;
 int read_register (struct net_device*,int ,scalar_t__*) ;

__attribute__((used)) static bool ipw2100_hw_is_adapter_in_system(struct net_device *dev)
{
 u32 dbg;

 read_register(dev, IPW_REG_DOA_DEBUG_AREA_START, &dbg);

 return dbg == IPW_DATA_DOA_DEBUG_VALUE;
}
