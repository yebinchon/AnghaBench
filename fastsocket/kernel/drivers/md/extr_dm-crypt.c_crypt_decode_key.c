
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int EINVAL ;
 scalar_t__ simple_strtoul (char*,char**,int) ;

__attribute__((used)) static int crypt_decode_key(u8 *key, char *hex, unsigned int size)
{
 char buffer[3];
 char *endp;
 unsigned int i;

 buffer[2] = '\0';

 for (i = 0; i < size; i++) {
  buffer[0] = *hex++;
  buffer[1] = *hex++;

  key[i] = (u8)simple_strtoul(buffer, &endp, 16);

  if (endp != &buffer[2])
   return -EINVAL;
 }

 if (*hex != '\0')
  return -EINVAL;

 return 0;
}
