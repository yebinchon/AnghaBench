
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int clks_register (int ,int ) ;
 int eseries_clkregs ;

void eseries_register_clks(void)
{
 clks_register(eseries_clkregs, ARRAY_SIZE(eseries_clkregs));
}
