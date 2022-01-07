
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int isspace (char) ;
 int memcpy (char*,char const*,int) ;
 int strict_strtoul (char*,int,unsigned long*) ;
 int swab16 (int ) ;

__attribute__((used)) static int hex2sprom(u16 *sprom, const char *dump, size_t len,
       size_t sprom_size_words)
{
 char c, tmp[5] = { 0 };
 int err, cnt = 0;
 unsigned long parsed;


 while (len) {
  c = dump[len - 1];
  if (!isspace(c) && c != '\0')
   break;
  len--;
 }

 if (len != sprom_size_words * 4)
  return -EINVAL;

 while (cnt < sprom_size_words) {
  memcpy(tmp, dump, 4);
  dump += 4;
  err = strict_strtoul(tmp, 16, &parsed);
  if (err)
   return err;
  sprom[cnt++] = swab16((u16)parsed);
 }

 return 0;
}
