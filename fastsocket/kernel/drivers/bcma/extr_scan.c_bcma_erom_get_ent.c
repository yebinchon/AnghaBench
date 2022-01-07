
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_bus {int dummy; } ;


 int readl (int *) ;

__attribute__((used)) static u32 bcma_erom_get_ent(struct bcma_bus *bus, u32 **eromptr)
{
 u32 ent = readl(*eromptr);
 (*eromptr)++;
 return ent;
}
