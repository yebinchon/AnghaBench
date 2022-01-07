
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct printf_spec {int dummy; } ;


 char* pack_hex_byte (char*,int ) ;
 char* string (char*,char*,char*,struct printf_spec) ;

__attribute__((used)) static char *mac_address_string(char *buf, char *end, u8 *addr,
    struct printf_spec spec, const char *fmt)
{
 char mac_addr[sizeof("xx:xx:xx:xx:xx:xx")];
 char *p = mac_addr;
 int i;

 for (i = 0; i < 6; i++) {
  p = pack_hex_byte(p, addr[i]);
  if (fmt[0] == 'M' && i != 5)
   *p++ = ':';
 }
 *p = '\0';

 return string(buf, end, mac_addr, spec);
}
