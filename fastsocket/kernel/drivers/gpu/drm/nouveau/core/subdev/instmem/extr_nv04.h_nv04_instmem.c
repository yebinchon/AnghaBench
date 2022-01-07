
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void nv04_instmem_priv ;


 scalar_t__ nouveau_instmem (void*) ;

__attribute__((used)) static inline struct nv04_instmem_priv *
nv04_instmem(void *obj)
{
 return (void *)nouveau_instmem(obj);
}
