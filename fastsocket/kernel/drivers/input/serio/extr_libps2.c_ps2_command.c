
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;


 int __ps2_command (struct ps2dev*,unsigned char*,int) ;
 int ps2_begin_command (struct ps2dev*) ;
 int ps2_end_command (struct ps2dev*) ;

int ps2_command(struct ps2dev *ps2dev, unsigned char *param, int command)
{
 int rc;

 ps2_begin_command(ps2dev);
 rc = __ps2_command(ps2dev, param, command);
 ps2_end_command(ps2dev);

 return rc;
}
