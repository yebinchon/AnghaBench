
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ata_id_string (int const*,unsigned char*,unsigned int,unsigned int) ;
 int strnlen (unsigned char*,unsigned int) ;

void ata_id_c_string(const u16 *id, unsigned char *s,
       unsigned int ofs, unsigned int len)
{
 unsigned char *p;

 ata_id_string(id, s, ofs, len - 1);

 p = s + strnlen(s, len - 1);
 while (p > s && p[-1] == ' ')
  p--;
 *p = '\0';
}
