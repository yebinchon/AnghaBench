
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_enum {int name; } ;


 struct nouveau_enum* nouveau_enum_find (struct nouveau_enum const*,int ) ;
 int pr_cont (char*,int ) ;

const struct nouveau_enum *
nouveau_enum_print(const struct nouveau_enum *en, u32 value)
{
 en = nouveau_enum_find(en, value);
 if (en)
  pr_cont("%s", en->name);
 else
  pr_cont("(unknown enum 0x%08x)", value);
 return en;
}
