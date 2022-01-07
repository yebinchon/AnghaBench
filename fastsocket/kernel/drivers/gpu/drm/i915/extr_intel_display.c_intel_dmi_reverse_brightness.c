
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int ident; } ;


 int DRM_INFO (char*,int ) ;

__attribute__((used)) static int intel_dmi_reverse_brightness(const struct dmi_system_id *id)
{
 DRM_INFO("Backlight polarity reversed on %s\n", id->ident);
 return 1;
}
