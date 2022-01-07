
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (unsigned char*,char*,...) ;

__attribute__((used)) static int sprinthx4(unsigned char *title, unsigned char *outaddr,
       unsigned int *array, unsigned int len)
{
 int hl, r;

 hl = sprintf(outaddr, "\n%s\n", title);
 for (r = 0; r < len; r++) {
  if ((r % 8) == 0)
   hl += sprintf(outaddr+hl, "    ");
  hl += sprintf(outaddr+hl, "%08X ", array[r]);
  if ((r % 8) == 7)
   hl += sprintf(outaddr+hl, "\n");
 }
 hl += sprintf(outaddr+hl, "\n");
 return hl;
}
