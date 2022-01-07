
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hardware_path {int* bc; scalar_t__ mod; } ;


 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static char *print_hwpath(struct hardware_path *path, char *output)
{
 int i;
 for (i = 0; i < 6; i++) {
  if (path->bc[i] == -1)
   continue;
  output += sprintf(output, "%u/", (unsigned char) path->bc[i]);
 }
 output += sprintf(output, "%u", (unsigned char) path->mod);
 return output;
}
