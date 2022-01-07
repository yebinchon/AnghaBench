
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zr36060 {int name; } ;


 int dprintk (int,char*,int ,int,int) ;
 int zr36060_write (struct zr36060*,int ,char const) ;

__attribute__((used)) static int
zr36060_pushit (struct zr36060 *ptr,
  u16 startreg,
  u16 len,
  const char *data)
{
 int i = 0;

 dprintk(4, "%s: write data block to 0x%04x (len=%d)\n", ptr->name,
  startreg, len);
 while (i < len) {
  zr36060_write(ptr, startreg++, data[i++]);
 }

 return i;
}
