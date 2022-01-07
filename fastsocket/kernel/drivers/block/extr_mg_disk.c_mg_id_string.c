
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BUG_ON (unsigned int) ;

__attribute__((used)) static void mg_id_string(const u16 *id, unsigned char *s,
    unsigned int ofs, unsigned int len)
{
 unsigned int c;

 BUG_ON(len & 1);

 while (len > 0) {
  c = id[ofs] >> 8;
  *s = c;
  s++;

  c = id[ofs] & 0xff;
  *s = c;
  s++;

  ofs++;
  len -= 2;
 }
}
