
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiptek_map {int value; scalar_t__ string; } ;


 int AIPTEK_INVALID_VALUE ;
 int strncmp (char const*,scalar_t__,size_t) ;

__attribute__((used)) static int map_str_to_val(const struct aiptek_map *map, const char *str, size_t count)
{
 const struct aiptek_map *p;

 if (str[count - 1] == '\n')
  count--;

 for (p = map; p->string; p++)
         if (!strncmp(str, p->string, count))
   return p->value;

 return AIPTEK_INVALID_VALUE;
}
