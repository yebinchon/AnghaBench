
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int camellia_setup256 (unsigned char*,int *) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static void camellia_setup192(const unsigned char *key, u32 *subkey)
{
 unsigned char kk[32];
 u32 krll, krlr, krrl,krrr;

 memcpy(kk, key, 24);
 memcpy((unsigned char *)&krll, key+16, 4);
 memcpy((unsigned char *)&krlr, key+20, 4);
 krrl = ~krll;
 krrr = ~krlr;
 memcpy(kk+24, (unsigned char *)&krrl, 4);
 memcpy(kk+28, (unsigned char *)&krrr, 4);
 camellia_setup256(kk, subkey);
}
