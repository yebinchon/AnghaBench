
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;


 int MAKE_PS2_CMD (int ,int,unsigned char) ;
 unsigned char TP_COMMAND ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int trackpoint_read(struct ps2dev *ps2dev, unsigned char loc, unsigned char *results)
{
 if (ps2_command(ps2dev, ((void*)0), MAKE_PS2_CMD(0, 0, TP_COMMAND)) ||
     ps2_command(ps2dev, results, MAKE_PS2_CMD(0, 1, loc))) {
  return -1;
 }

 return 0;
}
