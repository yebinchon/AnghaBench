
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_PS (char*,char*) ;
 int sprintf (char*,char*,unsigned char const) ;

__attribute__((used)) static void dump_block(const unsigned char *block, unsigned int length)
{
 unsigned int i, j;
 char linebuf[16 * 3 + 1];

 for (i = 0; i < length; i += 16) {
  for (j = 0; (j < 16) && (j + i < length); j++) {
   sprintf(linebuf + 3 * j, "%02x ", block[i + j]);
  }
  linebuf[3 * j] = '\0';
  TRACE_PS("%s", linebuf);
 }
}
