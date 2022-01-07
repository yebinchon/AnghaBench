
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cleanup ) () ;} ;


 int ARRAY_SIZE (TYPE_1__**) ;
 TYPE_1__** config_rom_entries ;
 int stub1 () ;

void hpsb_cleanup_config_roms(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(config_rom_entries); i++)
  config_rom_entries[i]->cleanup();
}
