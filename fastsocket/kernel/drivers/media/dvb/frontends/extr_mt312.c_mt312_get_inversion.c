
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt312_state {int dummy; } ;
typedef int fe_spectral_inversion_t ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int VIT_MODE ;
 int mt312_readreg (struct mt312_state*,int ,int*) ;

__attribute__((used)) static int mt312_get_inversion(struct mt312_state *state,
          fe_spectral_inversion_t *i)
{
 int ret;
 u8 vit_mode;

 ret = mt312_readreg(state, VIT_MODE, &vit_mode);
 if (ret < 0)
  return ret;

 if (vit_mode & 0x80)
  *i = (vit_mode & 0x40) ? INVERSION_ON : INVERSION_OFF;

 return 0;
}
