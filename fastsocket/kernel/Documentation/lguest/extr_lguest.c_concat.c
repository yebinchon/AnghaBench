
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void concat(char *dst, char *args[])
{
 unsigned int i, len = 0;

 for (i = 0; args[i]; i++) {
  if (i) {
   strcat(dst+len, " ");
   len++;
  }
  strcpy(dst+len, args[i]);
  len += strlen(args[i]);
 }

 dst[len] = '\0';
}
