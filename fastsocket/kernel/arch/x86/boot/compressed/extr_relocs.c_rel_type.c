
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const* REL_TYPE (int ) ;
__attribute__((used)) static const char *rel_type(unsigned type)
{
 static const char *type_name[] = {

  [131] = "R_386_NONE",
  [138] = "R_386_32",
  [130] = "R_386_PC32",
  [135] = "R_386_GOT32",
  [129] = "R_386_PLT32",
  [137] = "R_386_COPY",
  [136] = "R_386_GLOB_DAT",
  [132] = "R_386_JMP_SLOT",
  [128] = "R_386_RELATIVE",
  [134] = "R_386_GOTOFF",
  [133] = "R_386_GOTPC",

 };
 const char *name = "unknown type rel type name";
 if (type < ARRAY_SIZE(type_name)) {
  name = type_name[type];
 }
 return name;
}
