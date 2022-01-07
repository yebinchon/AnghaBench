
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int name; } ;


 int ARRAY_SIZE (struct tv_mode*) ;
 int strcmp (char const*,int ) ;
 struct tv_mode* tv_modes ;

__attribute__((used)) static const struct tv_mode *
intel_tv_mode_lookup(const char *tv_format)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
  const struct tv_mode *tv_mode = &tv_modes[i];

  if (!strcmp(tv_format, tv_mode->name))
   return tv_mode;
 }
 return ((void*)0);
}
