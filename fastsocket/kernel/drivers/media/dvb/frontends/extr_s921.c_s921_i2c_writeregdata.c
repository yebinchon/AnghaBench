
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s921_state {int dummy; } ;
struct regdata {int data; int reg; } ;


 int s921_i2c_writereg (struct s921_state*,int ,int ,int ) ;

__attribute__((used)) static int s921_i2c_writeregdata(struct s921_state *state, u8 i2c_addr,
     struct regdata *rd, int size)
{
 int i, rc;

 for (i = 0; i < size; i++) {
  rc = s921_i2c_writereg(state, i2c_addr, rd[i].reg, rd[i].data);
  if (rc < 0)
   return rc;
 }
 return 0;
}
