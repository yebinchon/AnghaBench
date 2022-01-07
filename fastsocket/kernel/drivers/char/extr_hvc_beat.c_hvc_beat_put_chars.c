
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int beat_put_term_char (int ,int,unsigned long,unsigned long) ;
 int memcpy (unsigned long*,char const*,int) ;

__attribute__((used)) static int hvc_beat_put_chars(uint32_t vtermno, const char *buf, int cnt)
{
 unsigned long kb[2];
 int rest, nlen;

 for (rest = cnt; rest > 0; rest -= nlen) {
  nlen = (rest > 16) ? 16 : rest;
  memcpy(kb, buf, nlen);
  beat_put_term_char(vtermno, nlen, kb[0], kb[1]);
  buf += nlen;
 }
 return cnt;
}
