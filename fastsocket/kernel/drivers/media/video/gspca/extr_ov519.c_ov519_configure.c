
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct ov_regvals {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct ov_regvals const*) ;



 int write_regvals (struct sd*,struct ov_regvals const*,int ) ;

__attribute__((used)) static void ov519_configure(struct sd *sd)
{
 static const struct ov_regvals init_519[] = {
  { 0x5a, 0x6d },
  { 0x53, 0x9b },
  { 128, 0xff },
  { 0x5d, 0x03 },
  { 0x49, 0x01 },
  { 0x48, 0x00 },


  { 130, 0xee },
  { 129, 0x0f },
  { 129, 0x00 },
  { 0x22, 0x00 },

 };

 write_regvals(sd, init_519, ARRAY_SIZE(init_519));
}
