
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {unsigned long features; } ;


 unsigned long EMAC_FTRS_ALWAYS ;
 unsigned long EMAC_FTRS_POSSIBLE ;

__attribute__((used)) static inline int emac_has_feature(struct emac_instance *dev,
       unsigned long feature)
{
 return (EMAC_FTRS_ALWAYS & feature) ||
        (EMAC_FTRS_POSSIBLE & dev->features & feature);
}
