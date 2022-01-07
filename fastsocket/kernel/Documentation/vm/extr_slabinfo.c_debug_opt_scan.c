
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int poison ;
 int redzone ;
 int sanity ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int tracing ;
 int tracking ;

__attribute__((used)) static int debug_opt_scan(char *opt)
{
 if (!opt || !opt[0] || strcmp(opt, "-") == 0)
  return 1;

 if (strcasecmp(opt, "a") == 0) {
  sanity = 1;
  poison = 1;
  redzone = 1;
  tracking = 1;
  return 1;
 }

 for ( ; *opt; opt++)
   switch (*opt) {
  case 'F' : case 'f':
   if (sanity)
    return 0;
   sanity = 1;
   break;
  case 'P' : case 'p':
   if (poison)
    return 0;
   poison = 1;
   break;

  case 'Z' : case 'z':
   if (redzone)
    return 0;
   redzone = 1;
   break;

  case 'U' : case 'u':
   if (tracking)
    return 0;
   tracking = 1;
   break;

  case 'T' : case 't':
   if (tracing)
    return 0;
   tracing = 1;
   break;
  default:
   return 0;
  }
 return 1;
}
