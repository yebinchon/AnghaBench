
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct omap_board_config_kernel {scalar_t__ tag; void const* data; } ;


 struct omap_board_config_kernel* omap_board_config ;
 int omap_board_config_size ;

__attribute__((used)) static const void *get_config(u16 tag, size_t len, int skip, size_t *len_out)
{
 struct omap_board_config_kernel *kinfo = ((void*)0);
 int i;



 for (i = 0; i < omap_board_config_size; i++) {
  if (omap_board_config[i].tag == tag) {
   if (skip == 0) {
    kinfo = &omap_board_config[i];
    break;
   } else {
    skip--;
   }
  }
 }
 if (kinfo == ((void*)0))
  return ((void*)0);
 return kinfo->data;
}
