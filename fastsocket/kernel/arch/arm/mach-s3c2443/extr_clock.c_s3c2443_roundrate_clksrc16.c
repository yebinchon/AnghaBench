
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long s3c2443_roundrate_clksrc (struct clk*,unsigned long,int) ;

__attribute__((used)) static unsigned long s3c2443_roundrate_clksrc16(struct clk *clk,
      unsigned long rate)
{
 return s3c2443_roundrate_clksrc(clk, rate, 16);
}
