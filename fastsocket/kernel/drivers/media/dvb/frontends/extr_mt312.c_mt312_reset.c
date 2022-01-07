
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mt312_state {int dummy; } ;


 int RESET ;
 int mt312_writereg (struct mt312_state*,int ,int) ;

__attribute__((used)) static int mt312_reset(struct mt312_state *state, const u8 full)
{
 return mt312_writereg(state, RESET, full ? 0x80 : 0x40);
}
