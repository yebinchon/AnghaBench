
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fw_device {int max_speed; int* config_rom; int config_rom_length; int max_rec; int cmc; int irmc; TYPE_2__* card; TYPE_1__* node; } ;
struct TYPE_4__ {int link_speed; scalar_t__ beta_repeaters_present; } ;
struct TYPE_3__ {int max_speed; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RCODE_COMPLETE ;
 int READ_BIB_ROM_SIZE ;
 int READ_BIB_STACK_SIZE ;
 int SCODE_100 ;
 int SCODE_BETA ;
 int down_write (int *) ;
 int fw_device_rwsem ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int* kmemdup (int*,int,int ) ;
 scalar_t__ read_rom (struct fw_device*,int,int,int*) ;
 int up_write (int *) ;

__attribute__((used)) static int read_bus_info_block(struct fw_device *device, int generation)
{
 u32 *rom, *stack, *old_rom, *new_rom;
 u32 sp, key;
 int i, end, length, ret = -1;

 rom = kmalloc(sizeof(*rom) * READ_BIB_ROM_SIZE +
        sizeof(*stack) * READ_BIB_STACK_SIZE, GFP_KERNEL);
 if (rom == ((void*)0))
  return -ENOMEM;

 stack = &rom[READ_BIB_ROM_SIZE];

 device->max_speed = SCODE_100;


 for (i = 0; i < 5; i++) {
  if (read_rom(device, generation, i, &rom[i]) != RCODE_COMPLETE)
   goto out;
  if (i == 0 && rom[i] == 0)
   goto out;
 }

 device->max_speed = device->node->max_speed;
 if ((rom[2] & 0x7) < device->max_speed ||
     device->max_speed == SCODE_BETA ||
     device->card->beta_repeaters_present) {
  u32 dummy;


  if (device->max_speed == SCODE_BETA)
   device->max_speed = device->card->link_speed;

  while (device->max_speed > SCODE_100) {
   if (read_rom(device, generation, 0, &dummy) ==
       RCODE_COMPLETE)
    break;
   device->max_speed--;
  }
 }
 length = i;
 sp = 0;
 stack[sp++] = 0xc0000005;
 while (sp > 0) {






  key = stack[--sp];
  i = key & 0xffffff;
  if (i >= READ_BIB_ROM_SIZE)




   goto out;


  if (read_rom(device, generation, i, &rom[i]) != RCODE_COMPLETE)
   goto out;
  end = i + (rom[i] >> 16) + 1;
  i++;
  if (end > READ_BIB_ROM_SIZE)






   goto out;






  while (i < end) {
   if (read_rom(device, generation, i, &rom[i]) !=
       RCODE_COMPLETE)
    goto out;
   if ((key >> 30) == 3 && (rom[i] >> 30) > 1 &&
       sp < READ_BIB_STACK_SIZE)
    stack[sp++] = i + rom[i];
   i++;
  }
  if (length < i)
   length = i;
 }

 old_rom = device->config_rom;
 new_rom = kmemdup(rom, length * 4, GFP_KERNEL);
 if (new_rom == ((void*)0))
  goto out;

 down_write(&fw_device_rwsem);
 device->config_rom = new_rom;
 device->config_rom_length = length;
 up_write(&fw_device_rwsem);

 kfree(old_rom);
 ret = 0;
 device->max_rec = rom[2] >> 12 & 0xf;
 device->cmc = rom[2] >> 30 & 1;
 device->irmc = rom[2] >> 31 & 1;
 out:
 kfree(rom);

 return ret;
}
