
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct agp_bridge_data {int dev_private_data; } ;


 int tioca_fastwrite_enable (int ) ;

__attribute__((used)) static void sgi_tioca_agp_enable(struct agp_bridge_data *bridge, u32 mode)
{
 tioca_fastwrite_enable(bridge->dev_private_data);
}
