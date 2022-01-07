
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int dummy; } ;


 int UBI_LAYOUT_VOLUME_COMPAT ;
 int UBI_LAYOUT_VOLUME_ID ;

__attribute__((used)) static int ubi_get_compat(const struct ubi_device *ubi, int vol_id)
{
 if (vol_id == UBI_LAYOUT_VOLUME_ID)
  return UBI_LAYOUT_VOLUME_COMPAT;
 return 0;
}
