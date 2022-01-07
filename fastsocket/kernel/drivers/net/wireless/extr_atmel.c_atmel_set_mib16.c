
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct get_set_mib {int size; int* data; void* index; void* type; } ;
struct atmel_private {int dummy; } ;


 int CMD_Set_MIB_Vars ;
 scalar_t__ MIB_HEADER_SIZE ;
 int atmel_send_command_wait (struct atmel_private*,int ,struct get_set_mib*,scalar_t__) ;

__attribute__((used)) static void atmel_set_mib16(struct atmel_private *priv, u8 type, u8 index,
       u16 data)
{
 struct get_set_mib m;
 m.type = type;
 m.size = 2;
 m.index = index;
 m.data[0] = data;
 m.data[1] = data >> 8;

 atmel_send_command_wait(priv, CMD_Set_MIB_Vars, &m, MIB_HEADER_SIZE + 2);
}
