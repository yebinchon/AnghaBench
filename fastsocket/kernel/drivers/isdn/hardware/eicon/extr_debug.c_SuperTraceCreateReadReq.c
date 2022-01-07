
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef scalar_t__ byte ;


 int ESC ;
 int memcpy (scalar_t__*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static word SuperTraceCreateReadReq (byte* P, const char* path) {
 byte var_length;
 byte* plen;

 var_length = (byte)strlen (path);

 *P++ = ESC;
 plen = P++;
 *P++ = 0x80;
 *P++ = 0x00;
 *P++ = 0x00;
 *P++ = 0x00;
 *P++ = 0x00;
 *P++ = var_length;
 memcpy (P, path, var_length);
 P += var_length;
 *plen = var_length + 0x06;

 return ((word)(var_length + 0x08));
}
