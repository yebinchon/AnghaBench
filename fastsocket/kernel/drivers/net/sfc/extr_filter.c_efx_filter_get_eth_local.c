
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct efx_filter_spec {int type; int* data; } ;




 int EFX_FILTER_VID_UNSPEC ;
 int EINVAL ;

int efx_filter_get_eth_local(const struct efx_filter_spec *spec,
        u16 *vid, u8 *addr)
{
 switch (spec->type) {
 case 128:
  *vid = EFX_FILTER_VID_UNSPEC;
  break;
 case 129:
  *vid = spec->data[0];
  break;
 default:
  return -EINVAL;
 }

 addr[0] = spec->data[2] >> 8;
 addr[1] = spec->data[2];
 addr[2] = spec->data[1] >> 24;
 addr[3] = spec->data[1] >> 16;
 addr[4] = spec->data[1] >> 8;
 addr[5] = spec->data[1];
 return 0;
}
