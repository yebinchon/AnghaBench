
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt312_state {int dummy; } ;
typedef enum mt312_reg_addr { ____Placeholder_mt312_reg_addr } mt312_reg_addr ;


 int mt312_write (struct mt312_state*,int const,int const*,int) ;

__attribute__((used)) static inline int mt312_writereg(struct mt312_state *state,
     const enum mt312_reg_addr reg, const u8 val)
{
 return mt312_write(state, reg, &val, 1);
}
