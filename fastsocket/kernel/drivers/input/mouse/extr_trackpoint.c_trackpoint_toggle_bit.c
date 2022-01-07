
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;


 int MAKE_PS2_CMD (int ,int ,unsigned char) ;
 unsigned char TP_COMMAND ;
 unsigned char TP_TOGGLE ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int trackpoint_toggle_bit(struct ps2dev *ps2dev, unsigned char loc, unsigned char mask)
{

 if (loc < 0x20 || loc >= 0x2F)
  return -1;

 if (ps2_command(ps2dev, ((void*)0), MAKE_PS2_CMD(0, 0, TP_COMMAND)) ||
     ps2_command(ps2dev, ((void*)0), MAKE_PS2_CMD(0, 0, TP_TOGGLE)) ||
     ps2_command(ps2dev, ((void*)0), MAKE_PS2_CMD(0, 0, loc)) ||
     ps2_command(ps2dev, ((void*)0), MAKE_PS2_CMD(0, 0, mask))) {
  return -1;
 }

 return 0;
}
