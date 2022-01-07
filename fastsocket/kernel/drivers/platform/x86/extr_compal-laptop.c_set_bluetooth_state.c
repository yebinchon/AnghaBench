
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BT_MASK ;
 int COMPAL_EC_COMMAND_WIRELESS ;
 int EINVAL ;
 int KILLSWITCH_MASK ;
 int ec_read (int ,int*) ;
 int ec_write (int ,int) ;

__attribute__((used)) static int set_bluetooth_state(int state)
{
 u8 result, value;

 ec_read(COMPAL_EC_COMMAND_WIRELESS, &result);

 if ((result & KILLSWITCH_MASK) == 0)
  return -EINVAL;
 else {
  if (state)
   value = (u8) (result | BT_MASK);
  else
   value = (u8) (result & ~BT_MASK);
  ec_write(COMPAL_EC_COMMAND_WIRELESS, value);
 }

 return 0;
}
