
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EINVAL ;
 scalar_t__ memcmp (char const* const,char const*,unsigned int) ;
 int memcpy (char*,char const*,unsigned int) ;
 int simple_strtol (char*,char**,int ) ;
 unsigned int strlen (char const* const) ;

__attribute__((used)) static int parse_token(const char *ptr,unsigned int len,
         int *valptr,
         const char * const *names, unsigned int namecnt)
{
 char buf[33];
 unsigned int slen;
 unsigned int idx;
 int negfl;
 char *p2;
 *valptr = 0;
 if (!names) namecnt = 0;
 for (idx = 0; idx < namecnt; idx++) {
  if (!names[idx]) continue;
  slen = strlen(names[idx]);
  if (slen != len) continue;
  if (memcmp(names[idx],ptr,slen)) continue;
  *valptr = idx;
  return 0;
 }
 negfl = 0;
 if ((*ptr == '-') || (*ptr == '+')) {
  negfl = (*ptr == '-');
  ptr++; len--;
 }
 if (len >= sizeof(buf)) return -EINVAL;
 memcpy(buf,ptr,len);
 buf[len] = 0;
 *valptr = simple_strtol(buf,&p2,0);
 if (negfl) *valptr = -(*valptr);
 if (*p2) return -EINVAL;
 return 1;
}
