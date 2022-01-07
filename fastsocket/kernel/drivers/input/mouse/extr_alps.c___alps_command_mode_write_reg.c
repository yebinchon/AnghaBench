
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int dummy; } ;


 scalar_t__ alps_command_mode_send_nibble (struct psmouse*,int) ;

__attribute__((used)) static int __alps_command_mode_write_reg(struct psmouse *psmouse, u8 value)
{
 if (alps_command_mode_send_nibble(psmouse, (value >> 4) & 0xf))
  return -1;
 if (alps_command_mode_send_nibble(psmouse, value & 0xf))
  return -1;
 return 0;
}
