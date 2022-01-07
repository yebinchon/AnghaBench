
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_lynx {int dummy; } ;


 int reg_read (struct ti_lynx const*,int) ;
 int reg_write (struct ti_lynx const*,int,int) ;

__attribute__((used)) static inline void reg_clear_bits(const struct ti_lynx *lynx, int offset,
                                  u32 mask)
{
        reg_write(lynx, offset, (reg_read(lynx, offset) & ~mask));
}
