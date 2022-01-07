
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atbm_state {int dummy; } ;


 int REG_READ_LATCH ;
 int atbm8830_write_reg (struct atbm_state*,int ,int) ;

__attribute__((used)) static inline int atbm8830_reglatch_lock(struct atbm_state *priv, int lock)
{
 return atbm8830_write_reg(priv, REG_READ_LATCH, lock ? 1 : 0);
}
