
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int sprintf (char*,char*,int,char const*) ;

__attribute__((used)) static char *
bitvector_process(char *p, u64 vector)
{
 int i,j;
 const char *units[]={ "", "K", "M", "G", "T" };

 for (i=0, j=0; i < 64; i++ , j=i/10) {
  if (vector & 0x1) {
   p += sprintf(p, "%d%s ", 1 << (i-j*10), units[j]);
  }
  vector >>= 1;
 }
 return p;
}
