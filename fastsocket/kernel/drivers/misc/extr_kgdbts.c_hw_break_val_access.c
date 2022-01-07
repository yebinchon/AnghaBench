
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_break_val ;
 int hw_break_val2 ;

__attribute__((used)) static void hw_break_val_access(void)
{
 hw_break_val2 = hw_break_val;
}
