
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int APPLESMC_DATA_PORT ;
 int APPLESMC_GET_KEY_BY_INDEX_CMD ;
 int EIO ;
 scalar_t__ __wait_status (int) ;
 char inb (int ) ;
 int outb (int,int ) ;
 scalar_t__ send_command (int ) ;

__attribute__((used)) static int applesmc_get_key_at_index(int index, char* key)
{
 int i;
 u8 readkey[4];
 readkey[0] = index >> 24;
 readkey[1] = index >> 16;
 readkey[2] = index >> 8;
 readkey[3] = index;

 if (send_command(APPLESMC_GET_KEY_BY_INDEX_CMD))
  return -EIO;

 for (i = 0; i < 4; i++) {
  outb(readkey[i], APPLESMC_DATA_PORT);
  if (__wait_status(0x04))
   return -EIO;
 }

 outb(4, APPLESMC_DATA_PORT);

 for (i = 0; i < 4; i++) {
  if (__wait_status(0x05))
   return -EIO;
  key[i] = inb(APPLESMC_DATA_PORT);
 }
 key[4] = 0;

 return 0;
}
