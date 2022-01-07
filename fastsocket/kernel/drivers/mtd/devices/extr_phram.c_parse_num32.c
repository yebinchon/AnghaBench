
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;


 int EINVAL ;
 unsigned long ustrtoul (char const*,char**,int ) ;

__attribute__((used)) static int parse_num32(uint32_t *num32, const char *token)
{
 char *endp;
 unsigned long n;

 n = ustrtoul(token, &endp, 0);
 if (*endp)
  return -EINVAL;

 *num32 = n;
 return 0;
}
