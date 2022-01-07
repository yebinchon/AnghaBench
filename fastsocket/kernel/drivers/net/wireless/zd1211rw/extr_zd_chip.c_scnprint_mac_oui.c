
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_chip {int dummy; } ;


 int scnprintf (char*,size_t,char*,int ,int ,int ) ;
 int zd_chip_to_mac (struct zd_chip*) ;
 int * zd_mac_get_perm_addr (int ) ;

__attribute__((used)) static int scnprint_mac_oui(struct zd_chip *chip, char *buffer, size_t size)
{
 u8 *addr = zd_mac_get_perm_addr(zd_chip_to_mac(chip));
 return scnprintf(buffer, size, "%02x-%02x-%02x",
           addr[0], addr[1], addr[2]);
}
