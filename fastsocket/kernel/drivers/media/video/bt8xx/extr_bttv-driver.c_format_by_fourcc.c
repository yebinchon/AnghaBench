
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv_format {int fourcc; } ;


 unsigned int FORMATS ;
 struct bttv_format const* formats ;

__attribute__((used)) static const struct bttv_format*
format_by_fourcc(int fourcc)
{
 unsigned int i;

 for (i = 0; i < FORMATS; i++) {
  if (-1 == formats[i].fourcc)
   continue;
  if (formats[i].fourcc == fourcc)
   return formats+i;
 }
 return ((void*)0);
}
