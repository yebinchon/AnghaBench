
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char const*) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void str2mac(const char *macaddr, unsigned char mac[6])
{
 unsigned int m[6];
 if (sscanf(macaddr, "%02x:%02x:%02x:%02x:%02x:%02x",
     &m[0], &m[1], &m[2], &m[3], &m[4], &m[5]) != 6)
  errx(1, "Failed to parse mac address '%s'", macaddr);
 mac[0] = m[0];
 mac[1] = m[1];
 mac[2] = m[2];
 mac[3] = m[3];
 mac[4] = m[4];
 mac[5] = m[5];
}
