
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RADEON_GEM_DOMAIN_CPU ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GEM_DOMAIN_VRAM ;




__attribute__((used)) static inline unsigned radeon_mem_type_to_domain(u32 mem_type)
{
 switch (mem_type) {
 case 128:
  return RADEON_GEM_DOMAIN_VRAM;
 case 129:
  return RADEON_GEM_DOMAIN_GTT;
 case 130:
  return RADEON_GEM_DOMAIN_CPU;
 default:
  break;
 }
 return 0;
}
