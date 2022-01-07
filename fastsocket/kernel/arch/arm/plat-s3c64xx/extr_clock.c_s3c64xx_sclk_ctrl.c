
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int S3C_SCLK_GATE ;
 int s3c64xx_gate (int ,struct clk*,int) ;

int s3c64xx_sclk_ctrl(struct clk *clk, int enable)
{
 return s3c64xx_gate(S3C_SCLK_GATE, clk, enable);
}
