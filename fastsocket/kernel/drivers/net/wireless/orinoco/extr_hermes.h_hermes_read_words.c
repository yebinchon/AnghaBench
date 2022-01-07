
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hermes {int reg_spacing; scalar_t__ iobase; } ;


 int ioread16_rep (scalar_t__,void*,unsigned int) ;

__attribute__((used)) static inline void hermes_read_words(struct hermes *hw, int off,
         void *buf, unsigned count)
{
 off = off << hw->reg_spacing;
 ioread16_rep(hw->iobase + off, buf, count);
}
