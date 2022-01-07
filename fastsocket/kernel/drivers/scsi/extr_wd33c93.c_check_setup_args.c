
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SETUP_ARGS ;
 char** setup_args ;
 int* setup_used ;
 int simple_strtoul (char*,int *,int ) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int
check_setup_args(char *key, int *flags, int *val, char *buf)
{
 int x;
 char *cp;

 for (x = 0; x < MAX_SETUP_ARGS; x++) {
  if (setup_used[x])
   continue;
  if (!strncmp(setup_args[x], key, strlen(key)))
   break;
  if (!strncmp(setup_args[x], "next", strlen("next")))
   return 0;
 }
 if (x == MAX_SETUP_ARGS)
  return 0;
 setup_used[x] = 1;
 cp = setup_args[x] + strlen(key);
 *val = -1;
 if (*cp != ':')
  return ++x;
 cp++;
 if ((*cp >= '0') && (*cp <= '9')) {
  *val = simple_strtoul(cp, ((void*)0), 0);
 }
 return ++x;
}
