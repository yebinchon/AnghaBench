
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sprintf (unsigned char*,char*,...) ;

__attribute__((used)) static int sprintcl(unsigned char *outaddr, unsigned char *addr,
      unsigned int len)
{
 int hl, i;

 hl = 0;
 for (i = 0; i < len; i++)
  hl += sprintf(outaddr+hl, "%01x", (unsigned int) addr[i]);
 hl += sprintf(outaddr+hl, " ");
 return hl;
}
