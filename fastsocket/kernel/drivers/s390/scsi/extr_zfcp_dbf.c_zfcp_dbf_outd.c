
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void zfcp_dbf_outd(char **p, const char *label, char *buffer,
     int buflen, int offset, int total_size)
{
 if (!offset)
  *p += sprintf(*p, "%-24s  ", label);
 while (buflen--) {
  if (offset > 0) {
   if ((offset % 32) == 0)
    *p += sprintf(*p, "\n%-24c  ", ' ');
   else if ((offset % 4) == 0)
    *p += sprintf(*p, " ");
  }
  *p += sprintf(*p, "%02x", *buffer++);
  if (++offset == total_size) {
   *p += sprintf(*p, "\n");
   break;
  }
 }
 if (!total_size)
  *p += sprintf(*p, "\n");
}
