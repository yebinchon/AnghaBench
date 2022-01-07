
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct dib0090_state {int dummy; } ;


 int dib0090_write_reg (struct dib0090_state*,int ,int ) ;

__attribute__((used)) static void dib0090_write_regs(struct dib0090_state *state, u8 r, const u16 * b, u8 c)
{
 do {
  dib0090_write_reg(state, r++, *b++);
 } while (--c);
}
