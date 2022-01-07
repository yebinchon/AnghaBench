
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_MODE_DPMS_ON ;
 int NV_DPMS_CLEARED ;

__attribute__((used)) static inline bool is_powersaving_dpms(int mode)
{
 return mode != DRM_MODE_DPMS_ON && mode != NV_DPMS_CLEARED;
}
