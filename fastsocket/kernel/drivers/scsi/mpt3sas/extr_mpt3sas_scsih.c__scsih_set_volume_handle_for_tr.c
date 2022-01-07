
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static void
_scsih_set_volume_handle_for_tr(u16 handle, u16 *a, u16 *b)
{
 if (!handle || handle == *a || handle == *b)
  return;
 if (!*a)
  *a = handle;
 else if (!*b)
  *b = handle;
}
