
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_ALEN ;
 int ether_crc (int ,char*) ;

__attribute__((used)) static unsigned int smsc95xx_hash(char addr[ETH_ALEN])
{
 return (ether_crc(ETH_ALEN, addr) >> 26) & 0x3f;
}
