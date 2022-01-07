
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (char) ;

__attribute__((used)) static char *dot2underscore(char *name)
{
 if (name[0] == '.') {
  name[0] = '_';
                name[1] = toupper(name[1]);
 }
 return name;
}
