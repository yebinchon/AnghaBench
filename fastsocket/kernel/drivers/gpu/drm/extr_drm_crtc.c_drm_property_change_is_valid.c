
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct drm_property {int flags; unsigned long long* values; int num_values; } ;


 int DRM_MODE_PROP_BITMASK ;
 int DRM_MODE_PROP_BLOB ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int DRM_MODE_PROP_RANGE ;

__attribute__((used)) static bool drm_property_change_is_valid(struct drm_property *property,
      uint64_t value)
{
 if (property->flags & DRM_MODE_PROP_IMMUTABLE)
  return 0;
 if (property->flags & DRM_MODE_PROP_RANGE) {
  if (value < property->values[0] || value > property->values[1])
   return 0;
  return 1;
 } else if (property->flags & DRM_MODE_PROP_BITMASK) {
  int i;
  uint64_t valid_mask = 0;
  for (i = 0; i < property->num_values; i++)
   valid_mask |= (1ULL << property->values[i]);
  return !(value & ~valid_mask);
 } else if (property->flags & DRM_MODE_PROP_BLOB) {

  return 1;
 } else {
  int i;
  for (i = 0; i < property->num_values; i++)
   if (property->values[i] == value)
    return 1;
  return 0;
 }
}
