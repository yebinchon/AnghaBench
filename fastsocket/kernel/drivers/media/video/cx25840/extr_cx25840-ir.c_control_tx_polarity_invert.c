
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int CNTRL_CPL ;
 int CX25840_IR_CNTRL_REG ;
 int cx25840_and_or4 (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static inline void control_tx_polarity_invert(struct i2c_client *c,
           bool invert)
{
 cx25840_and_or4(c, CX25840_IR_CNTRL_REG, ~CNTRL_CPL,
   invert ? CNTRL_CPL : 0);
}
