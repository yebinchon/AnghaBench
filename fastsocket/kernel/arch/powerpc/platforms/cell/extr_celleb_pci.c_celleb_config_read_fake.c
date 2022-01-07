
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int celleb_fake_config_readb (char*) ;
 int celleb_fake_config_readl (char*) ;
 int celleb_fake_config_readw (char*) ;

__attribute__((used)) static void celleb_config_read_fake(unsigned char *config, int where,
        int size, u32 *val)
{
 char *p = config + where;

 switch (size) {
 case 1:
  *val = celleb_fake_config_readb(p);
  break;
 case 2:
  *val = celleb_fake_config_readw(p);
  break;
 case 4:
  *val = celleb_fake_config_readl(p);
  break;
 }
}
