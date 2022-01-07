
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int drm_mga_private_t ;


 scalar_t__ MGA_ENDPRDMASTS ;
 scalar_t__ MGA_ENGINE_IDLE_MASK ;
 scalar_t__ MGA_READ (int ) ;
 int MGA_STATUS ;

__attribute__((used)) static __inline__ int mga_is_idle(drm_mga_private_t *dev_priv)
{
 u32 status = MGA_READ(MGA_STATUS) & MGA_ENGINE_IDLE_MASK;
 return (status == MGA_ENDPRDMASTS);
}
