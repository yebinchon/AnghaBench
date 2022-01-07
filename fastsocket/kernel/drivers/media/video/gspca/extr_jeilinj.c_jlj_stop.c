
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; int member_1; } ;
struct jlj_command {int instruction; int member_1; TYPE_1__ member_0; } ;
struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (struct jlj_command*) ;
 int jlj_write2 (struct gspca_dev*,int ) ;

__attribute__((used)) static int jlj_stop(struct gspca_dev *gspca_dev)
{
 int i;
 int retval;
 struct jlj_command stop_commands[] = {
  {{0x71, 0x00}, 0},
  {{0x70, 0x09}, 0},
  {{0x71, 0x80}, 0},
  {{0x70, 0x05}, 0}
 };
 for (i = 0; i < ARRAY_SIZE(stop_commands); i++) {
  retval = jlj_write2(gspca_dev, stop_commands[i].instruction);
  if (retval < 0)
   return retval;
 }
 return retval;
}
