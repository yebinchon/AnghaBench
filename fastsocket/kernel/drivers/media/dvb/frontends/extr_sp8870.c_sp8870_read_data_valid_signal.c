
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp8870_state {int dummy; } ;


 scalar_t__ sp8870_readreg (struct sp8870_state*,int) ;

__attribute__((used)) static int sp8870_read_data_valid_signal(struct sp8870_state* state)
{
 return (sp8870_readreg(state, 0x0D02) > 0);
}
