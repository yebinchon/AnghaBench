
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct atkbd {struct ps2dev ps2dev; } ;


 int ATKBD_CMD_SETLEDS ;
 int ATKBD_CMD_SETREP ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int atkbd_reset_state(struct atkbd *atkbd)
{
        struct ps2dev *ps2dev = &atkbd->ps2dev;
 unsigned char param[1];





 param[0] = 0;
 if (ps2_command(ps2dev, param, ATKBD_CMD_SETLEDS))
  return -1;





 param[0] = 0;
 if (ps2_command(ps2dev, param, ATKBD_CMD_SETREP))
  return -1;

 return 0;
}
