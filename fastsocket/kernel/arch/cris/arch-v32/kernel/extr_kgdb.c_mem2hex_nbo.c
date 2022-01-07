
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pack_hex_byte (char*,int) ;

__attribute__((used)) static char *
mem2hex_nbo(char *buf, unsigned char *mem, int count)
{
 int i;
 int ch;

 mem += count - 1;
 for (i = 0; i < count; i++) {
  ch = *mem--;
  buf = pack_hex_byte(buf, ch);
        }


 *buf = '\0';
 return buf;
}
