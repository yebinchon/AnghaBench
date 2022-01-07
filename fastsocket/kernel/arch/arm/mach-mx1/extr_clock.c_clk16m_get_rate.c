
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;



__attribute__((used)) static unsigned long clk16m_get_rate(struct clk *clk)
{
 return 16000000;
}
