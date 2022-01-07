
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (unsigned char*,char*,...) ;
 scalar_t__ sprintrw (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int sprinthx(unsigned char *title, unsigned char *outaddr,
      unsigned char *addr, unsigned int len)
{
 int hl, inl, r, rx;

 hl = sprintf(outaddr, "\n%s\n", title);
 inl = 0;
 for (r = 0; r < (len / 64); r++) {
  hl += sprintrw(outaddr+hl, addr+inl, 64);
  inl += 64;
 }
 rx = len % 64;
 if (rx) {
  hl += sprintrw(outaddr+hl, addr+inl, rx);
  inl += rx;
 }
 hl += sprintf(outaddr+hl, "\n");
 return hl;
}
