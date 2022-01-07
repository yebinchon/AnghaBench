
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hermes {int reg_spacing; scalar_t__ iobase; } ;


 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static inline void hermes_clear_words(struct hermes *hw, int off,
          unsigned count)
{
 unsigned i;

 off = off << hw->reg_spacing;

 for (i = 0; i < count; i++)
  iowrite16(0, hw->iobase + off);
}
