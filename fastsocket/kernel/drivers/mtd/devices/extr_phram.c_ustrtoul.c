
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long simple_strtoul (char const*,char**,unsigned int) ;

__attribute__((used)) static int ustrtoul(const char *cp, char **endp, unsigned int base)
{
 unsigned long result = simple_strtoul(cp, endp, base);

 switch (**endp) {
 case 'G':
  result *= 1024;
 case 'M':
  result *= 1024;
 case 'k':
  result *= 1024;

  if ((*endp)[1] == 'i')
   (*endp) += 2;
 }
 return result;
}
