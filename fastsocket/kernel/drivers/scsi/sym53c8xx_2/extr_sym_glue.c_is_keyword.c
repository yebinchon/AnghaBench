
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int is_keyword(char *ptr, int len, char *verb)
{
 int verb_len = strlen(verb);

 if (len >= verb_len && !memcmp(verb, ptr, verb_len))
  return verb_len;
 else
  return 0;
}
