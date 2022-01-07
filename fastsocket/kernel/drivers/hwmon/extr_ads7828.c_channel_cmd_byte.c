
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ads7828_cmd_byte ;

__attribute__((used)) static inline u8 channel_cmd_byte(int ch)
{

 u8 cmd = (((ch>>1) | (ch&0x01)<<2)<<4);
 cmd |= ads7828_cmd_byte;
 return cmd;
}
