
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int i2c; } ;


 int dib8000_i2c_write16 (int *,int ,int ) ;

__attribute__((used)) static int dib8000_write_word(struct dib8000_state *state, u16 reg, u16 val)
{
 return dib8000_i2c_write16(&state->i2c, reg, val);
}
