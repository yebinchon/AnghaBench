
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int LOCK (unsigned long) ;
 int MACIO_BIC (int,int ) ;
 int MACIO_BIS (int,int ) ;
 int MACIO_IN32 (int) ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_find (struct device_node*,int) ;

__attribute__((used)) static inline int simple_feature_tweak(struct device_node *node, int type,
           int reg, u32 mask, int value)
{
 struct macio_chip* macio;
 unsigned long flags;

 macio = macio_find(node, type);
 if (!macio)
  return -ENODEV;
 LOCK(flags);
 if (value)
  MACIO_BIS(reg, mask);
 else
  MACIO_BIC(reg, mask);
 (void)MACIO_IN32(reg);
 UNLOCK(flags);

 return 0;
}
