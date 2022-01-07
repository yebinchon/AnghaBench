
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int celleb_fake_config_writeb (int ,char*) ;
 int celleb_fake_config_writel (int ,char*) ;
 int celleb_fake_config_writew (int ,char*) ;

__attribute__((used)) static void celleb_config_write_fake(unsigned char *config, int where,
         int size, u32 val)
{
 char *p = config + where;

 switch (size) {
 case 1:
  celleb_fake_config_writeb(val, p);
  break;
 case 2:
  celleb_fake_config_writew(val, p);
  break;
 case 4:
  celleb_fake_config_writel(val, p);
  break;
 }
}
