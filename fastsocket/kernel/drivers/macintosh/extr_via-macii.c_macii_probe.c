
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ adb_type; } ;


 int ENODEV ;
 scalar_t__ MAC_ADB_II ;
 TYPE_1__* macintosh_config ;
 int printk (char*) ;
 int via ;
 int via1 ;

__attribute__((used)) static int macii_probe(void)
{
 if (macintosh_config->adb_type != MAC_ADB_II) return -ENODEV;

 via = via1;

 printk("adb: Mac II ADB Driver v1.0 for Unified ADB\n");
 return 0;
}
