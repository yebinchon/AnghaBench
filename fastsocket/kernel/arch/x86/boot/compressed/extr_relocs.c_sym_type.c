
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;







 char const* SYM_TYPE (int ) ;

__attribute__((used)) static const char *sym_type(unsigned type)
{
 static const char *type_name[] = {

  [131] = "STT_NOTYPE",
  [130] = "STT_OBJECT",
  [132] = "STT_FUNC",
  [129] = "STT_SECTION",
  [133] = "STT_FILE",
  [134] = "STT_COMMON",
  [128] = "STT_TLS",

 };
 const char *name = "unknown sym type name";
 if (type < ARRAY_SIZE(type_name)) {
  name = type_name[type];
 }
 return name;
}
