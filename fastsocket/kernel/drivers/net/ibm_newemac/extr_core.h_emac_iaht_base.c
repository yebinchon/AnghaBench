
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emac_instance {int dummy; } ;


 int * emac_xaht_base (struct emac_instance*) ;

__attribute__((used)) static inline u32 *emac_iaht_base(struct emac_instance *dev)
{



 return (emac_xaht_base(dev));
}
