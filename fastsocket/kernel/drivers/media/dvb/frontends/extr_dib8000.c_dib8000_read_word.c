
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int i2c; } ;


 int dib8000_i2c_read16 (int *,int ) ;

__attribute__((used)) static u16 dib8000_read_word(struct dib8000_state *state, u16 reg)
{
 return dib8000_i2c_read16(&state->i2c, reg);
}
