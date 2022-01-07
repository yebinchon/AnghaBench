
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Hydra {int CachePD; } ;


 int writel (int ,int *) ;

__attribute__((used)) static inline void pdregw(void *data, u32 val)
{
 struct Hydra *hydra = (struct Hydra *)data;
 writel(val, &hydra->CachePD);
}
