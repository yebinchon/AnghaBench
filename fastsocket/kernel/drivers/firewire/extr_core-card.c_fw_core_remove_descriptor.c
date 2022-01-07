
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_descriptor {scalar_t__ immediate; int link; } ;


 int card_mutex ;
 int config_rom_length ;
 int descriptor_count ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ required_space (struct fw_descriptor*) ;
 int update_config_roms () ;

void fw_core_remove_descriptor(struct fw_descriptor *desc)
{
 mutex_lock(&card_mutex);

 list_del(&desc->link);
 config_rom_length -= required_space(desc);
 descriptor_count--;
 if (desc->immediate > 0)
  descriptor_count--;
 update_config_roms();

 mutex_unlock(&card_mutex);
}
