
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ isxdigit (int const) ;
 char tolower (int const) ;

int read_idm_word(const u8 * data, size_t size, int *pos, unsigned int *val)
{
 int result = 0;
 if (pos != 0 && val != 0) {

  for (; *pos < size && !isxdigit(data[*pos]); (*pos)++) {
  }

  *val = 0;
  for (; *pos < size && isxdigit(data[*pos]); (*pos)++) {
   char ch = tolower(data[*pos]);
   result = 1;
   if ('0' <= ch && ch <= '9') {
    *val = (*val << 4) + (ch - '0');
   } else if ('a' <= ch && ch <= 'f') {
    *val = (*val << 4) + (ch - 'a' + 10);
   }
  }
 }
 return result;
}
