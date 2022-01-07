
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void nv04_vmmgr_priv ;


 scalar_t__ nouveau_vmmgr (void*) ;

__attribute__((used)) static inline struct nv04_vmmgr_priv *
nv04_vmmgr(void *obj)
{
 return (void *)nouveau_vmmgr(obj);
}
