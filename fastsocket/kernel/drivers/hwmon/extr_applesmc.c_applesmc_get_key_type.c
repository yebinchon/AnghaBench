
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPLESMC_DATA_PORT ;
 int APPLESMC_GET_KEY_TYPE_CMD ;
 int EIO ;
 scalar_t__ __wait_status (int) ;
 char inb (int ) ;
 int outb (int,int ) ;
 scalar_t__ send_command (int ) ;

__attribute__((used)) static int applesmc_get_key_type(char* key, char* type)
{
 int i;

 if (send_command(APPLESMC_GET_KEY_TYPE_CMD))
  return -EIO;

 for (i = 0; i < 4; i++) {
  outb(key[i], APPLESMC_DATA_PORT);
  if (__wait_status(0x04))
   return -EIO;
 }

 outb(6, APPLESMC_DATA_PORT);

 for (i = 0; i < 6; i++) {
  if (__wait_status(0x05))
   return -EIO;
  type[i] = inb(APPLESMC_DATA_PORT);
 }
 type[5] = 0;

 return 0;
}
