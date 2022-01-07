
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zerolength ;
typedef int u8 ;
typedef int u16 ;
struct in6_addr {scalar_t__* s6_addr16; int * s6_addr; } ;


 void* hex_asc_lo (int) ;
 char* ip4_string (char*,int *,int) ;
 scalar_t__ ipv6_addr_is_isatap (struct in6_addr*) ;
 scalar_t__ ipv6_addr_v4mapped (struct in6_addr*) ;
 int memcpy (struct in6_addr*,char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ntohs (scalar_t__) ;
 char* pack_hex_byte (char*,int) ;

__attribute__((used)) static char *ip6_compressed_string(char *p, const char *addr)
{
 int i;
 int j;
 int range;
 unsigned char zerolength[8];
 int longest = 1;
 int colonpos = -1;
 u16 word;
 u8 hi;
 u8 lo;
 bool needcolon = 0;
 bool useIPv4;
 struct in6_addr in6;

 memcpy(&in6, addr, sizeof(struct in6_addr));

 useIPv4 = ipv6_addr_v4mapped(&in6) || ipv6_addr_is_isatap(&in6);

 memset(zerolength, 0, sizeof(zerolength));

 if (useIPv4)
  range = 6;
 else
  range = 8;


 for (i = 0; i < range; i++) {
  for (j = i; j < range; j++) {
   if (in6.s6_addr16[j] != 0)
    break;
   zerolength[i]++;
  }
 }
 for (i = 0; i < range; i++) {
  if (zerolength[i] > longest) {
   longest = zerolength[i];
   colonpos = i;
  }
 }


 for (i = 0; i < range; i++) {
  if (i == colonpos) {
   if (needcolon || i == 0)
    *p++ = ':';
   *p++ = ':';
   needcolon = 0;
   i += longest - 1;
   continue;
  }
  if (needcolon) {
   *p++ = ':';
   needcolon = 0;
  }

  word = ntohs(in6.s6_addr16[i]);
  hi = word >> 8;
  lo = word & 0xff;
  if (hi) {
   if (hi > 0x0f)
    p = pack_hex_byte(p, hi);
   else
    *p++ = hex_asc_lo(hi);
  }
  if (hi || lo > 0x0f)
   p = pack_hex_byte(p, lo);
  else
   *p++ = hex_asc_lo(lo);
  needcolon = 1;
 }

 if (useIPv4) {
  if (needcolon)
   *p++ = ':';
  p = ip4_string(p, &in6.s6_addr[12], 0);
 }

 *p = '\0';
 return p;
}
