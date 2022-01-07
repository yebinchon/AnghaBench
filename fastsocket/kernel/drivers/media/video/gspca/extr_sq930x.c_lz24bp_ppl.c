
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ucbus_write_cmd {int member_0; int member_1; } ;
struct sd {int gspca_dev; } ;


 int ARRAY_SIZE (struct ucbus_write_cmd*) ;
 int ucbus_write (int *,struct ucbus_write_cmd*,int ,int) ;

__attribute__((used)) static void lz24bp_ppl(struct sd *sd, u16 ppl)
{
 struct ucbus_write_cmd cmds[2] = {
  {0xf810, ppl >> 8},
  {0xf811, ppl}
 };

 ucbus_write(&sd->gspca_dev, cmds, ARRAY_SIZE(cmds), 2);
}
