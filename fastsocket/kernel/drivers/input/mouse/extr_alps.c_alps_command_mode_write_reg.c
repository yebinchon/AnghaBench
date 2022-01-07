
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int dummy; } ;


 int __alps_command_mode_write_reg (struct psmouse*,int ) ;
 scalar_t__ alps_command_mode_set_addr (struct psmouse*,int) ;

__attribute__((used)) static int alps_command_mode_write_reg(struct psmouse *psmouse, int addr,
           u8 value)
{
 if (alps_command_mode_set_addr(psmouse, addr))
  return -1;
 return __alps_command_mode_write_reg(psmouse, value);
}
