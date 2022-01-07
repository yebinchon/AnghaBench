
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int CNTRL_EDG_BOTH ;
 int CX25840_IR_CNTRL_REG ;
 int cx25840_and_or4 (struct i2c_client*,int ,int,int) ;

__attribute__((used)) static inline void control_rx_s_edge_detection(struct i2c_client *c,
            u32 edge_types)
{
 cx25840_and_or4(c, CX25840_IR_CNTRL_REG, ~CNTRL_EDG_BOTH,
   edge_types & CNTRL_EDG_BOTH);
}
