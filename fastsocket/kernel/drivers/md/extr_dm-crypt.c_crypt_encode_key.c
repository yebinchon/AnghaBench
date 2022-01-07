
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static void crypt_encode_key(char *hex, u8 *key, unsigned int size)
{
 unsigned int i;

 for (i = 0; i < size; i++) {
  sprintf(hex, "%02x", *key);
  hex += 2;
  key++;
 }
}
