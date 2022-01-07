
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; scalar_t__ (* init ) () ;} ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int HPSB_ERR (char*,int ) ;
 TYPE_1__** config_rom_entries ;
 scalar_t__ stub1 () ;

int hpsb_init_config_roms(void)
{
 int i, error = 0;

 for (i = 0; i < ARRAY_SIZE(config_rom_entries); i++)
  if (config_rom_entries[i]->init()) {
   HPSB_ERR("Failed to initialize config rom entry `%s'",
     config_rom_entries[i]->name);
   error = -1;
  }

 return error;
}
