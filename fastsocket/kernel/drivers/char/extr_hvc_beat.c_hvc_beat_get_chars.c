
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u64 ;


 scalar_t__ beat_get_term_char (int ,int*,int*,int*) ;
 int memcpy (char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int hvc_beat_get_chars(uint32_t vtermno, char *buf, int cnt)
{
 static unsigned char q[sizeof(unsigned long) * 2]
  __attribute__((aligned(sizeof(unsigned long))));
 static int qlen = 0;
 u64 got;

again:
 if (qlen) {
  if (qlen > cnt) {
   memcpy(buf, q, cnt);
   qlen -= cnt;
   memmove(q + cnt, q, qlen);
   return cnt;
  } else {
   int r;

   memcpy(buf, q, qlen);
   r = qlen;
   qlen = 0;
   return r;
  }
 }
 if (beat_get_term_char(vtermno, &got,
  ((u64 *)q), ((u64 *)q) + 1) == 0) {
  qlen = got;
  goto again;
 }
 return 0;
}
