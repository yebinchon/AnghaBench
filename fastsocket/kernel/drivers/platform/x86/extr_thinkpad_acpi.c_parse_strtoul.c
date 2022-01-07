
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 char* skip_spaces (char const*) ;

__attribute__((used)) static int parse_strtoul(const char *buf,
  unsigned long max, unsigned long *value)
{
 char *endp;

 *value = simple_strtoul(skip_spaces(buf), &endp, 0);
 endp = skip_spaces(endp);
 if (*endp || *value > max)
  return -EINVAL;

 return 0;
}
