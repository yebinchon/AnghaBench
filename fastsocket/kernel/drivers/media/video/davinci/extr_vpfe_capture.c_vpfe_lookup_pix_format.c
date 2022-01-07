
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ pixelformat; } ;
struct vpfe_pixel_format {TYPE_1__ fmtdesc; } ;


 int ARRAY_SIZE (struct vpfe_pixel_format const*) ;
 struct vpfe_pixel_format const* vpfe_pix_fmts ;

__attribute__((used)) static const struct vpfe_pixel_format *vpfe_lookup_pix_format(u32 pix_format)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(vpfe_pix_fmts); i++) {
  if (pix_format == vpfe_pix_fmts[i].fmtdesc.pixelformat)
   return &vpfe_pix_fmts[i];
 }
 return ((void*)0);
}
