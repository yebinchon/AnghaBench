
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_state {int dummy; } ;


 int FE_ERROR ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int VTH12 ;
 int VTH23 ;
 int VTH34 ;
 int VTH56 ;
 int VTH67 ;
 int VTH78 ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_set_vit_thacq(struct stv090x_state *state)
{
 if (STV090x_WRITE_DEMOD(state, VTH12, 0x96) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, VTH23, 0x64) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, VTH34, 0x36) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, VTH56, 0x23) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, VTH67, 0x1e) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, VTH78, 0x19) < 0)
  goto err;
 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
