
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int errx (int,char*,char const*) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static u32 str2ip(const char *ipaddr)
{
 unsigned int b[4];

 if (sscanf(ipaddr, "%u.%u.%u.%u", &b[0], &b[1], &b[2], &b[3]) != 4)
  errx(1, "Failed to parse IP address '%s'", ipaddr);
 return (b[0] << 24) | (b[1] << 16) | (b[2] << 8) | b[3];
}
