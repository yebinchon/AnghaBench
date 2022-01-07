
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int vtbl_slots; } ;


 int UBI_INTERNAL_VOL_START ;

__attribute__((used)) static inline int idx2vol_id(const struct ubi_device *ubi, int idx)
{
 if (idx >= ubi->vtbl_slots)
  return idx - ubi->vtbl_slots + UBI_INTERNAL_VOL_START;
 else
  return idx;
}
