
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int udbg_getc_poll () ;

__attribute__((used)) static int hvc_udbg_get(uint32_t vtermno, char *buf, int count)
{
 int i, c;

 if (!udbg_getc_poll)
  return 0;

 for (i = 0; i < count; i++) {
  if ((c = udbg_getc_poll()) == -1)
   break;
  buf[i] = c;
 }

 return i;
}
