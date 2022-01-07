
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ snprintf (char*,size_t,char*,...) ;
 int swab16 (int const) ;

__attribute__((used)) static int sprom2hex(const u16 *sprom, char *buf, size_t buf_len,
       size_t sprom_size_words)
{
 int i, pos = 0;

 for (i = 0; i < sprom_size_words; i++)
  pos += snprintf(buf + pos, buf_len - pos - 1,
    "%04X", swab16(sprom[i]) & 0xFFFF);
 pos += snprintf(buf + pos, buf_len - pos - 1, "\n");

 return pos + 1;
}
