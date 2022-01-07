
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_descriptor {size_t length; int* data; scalar_t__ immediate; int link; } ;


 int EBUSY ;
 int EINVAL ;
 int card_mutex ;
 int config_rom_length ;
 int descriptor_count ;
 int descriptor_list ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int required_space (struct fw_descriptor*) ;
 int update_config_roms () ;

int fw_core_add_descriptor(struct fw_descriptor *desc)
{
 size_t i;
 int ret;






 i = 0;
 while (i < desc->length)
  i += (desc->data[i] >> 16) + 1;

 if (i != desc->length)
  return -EINVAL;

 mutex_lock(&card_mutex);

 if (config_rom_length + required_space(desc) > 256) {
  ret = -EBUSY;
 } else {
  list_add_tail(&desc->link, &descriptor_list);
  config_rom_length += required_space(desc);
  descriptor_count++;
  if (desc->immediate > 0)
   descriptor_count++;
  update_config_roms();
  ret = 0;
 }

 mutex_unlock(&card_mutex);

 return ret;
}
