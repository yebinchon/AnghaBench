
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nouveau_bo {int dummy; } ;


 int NOUVEAU_GEM_DOMAIN_GART ;
 int NOUVEAU_GEM_DOMAIN_VRAM ;
 int TTM_PL_FLAG_TT ;
 int TTM_PL_FLAG_VRAM ;

__attribute__((used)) static inline uint32_t
domain_to_ttm(struct nouveau_bo *nvbo, uint32_t domain)
{
 uint32_t flags = 0;

 if (domain & NOUVEAU_GEM_DOMAIN_VRAM)
  flags |= TTM_PL_FLAG_VRAM;
 if (domain & NOUVEAU_GEM_DOMAIN_GART)
  flags |= TTM_PL_FLAG_TT;

 return flags;
}
