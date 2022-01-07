
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;




 char const* SYM_VISIBILITY (int ) ;

__attribute__((used)) static const char *sym_visibility(unsigned visibility)
{
 static const char *visibility_name[] = {

  [131] = "STV_DEFAULT",
  [129] = "STV_INTERNAL",
  [130] = "STV_HIDDEN",
  [128] = "STV_PROTECTED",

 };
 const char *name = "unknown sym visibility name";
 if (visibility < ARRAY_SIZE(visibility_name)) {
  name = visibility_name[visibility];
 }
 return name;
}
