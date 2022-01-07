
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_format {unsigned int fourcc; } ;


 unsigned int FORMATS ;
 struct saa7134_format* formats ;

__attribute__((used)) static struct saa7134_format* format_by_fourcc(unsigned int fourcc)
{
 unsigned int i;

 for (i = 0; i < FORMATS; i++)
  if (formats[i].fourcc == fourcc)
   return formats+i;
 return ((void*)0);
}
