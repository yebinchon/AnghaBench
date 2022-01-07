
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int vtbl_slots; } ;


 int UBI_INTERNAL_VOL_START ;

__attribute__((used)) static inline int vol_id2idx(const struct ubi_device *ubi, int vol_id)
{
 if (vol_id >= UBI_INTERNAL_VOL_START)
  return vol_id - UBI_INTERNAL_VOL_START + ubi->vtbl_slots;
 else
  return vol_id;
}
