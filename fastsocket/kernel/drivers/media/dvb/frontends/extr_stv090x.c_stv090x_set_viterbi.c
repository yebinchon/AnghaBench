
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_state {int search_mode; int fec; } ;


 int FECM ;
 int FE_ERROR ;
 int PRVIT ;
 int STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_set_viterbi(struct stv090x_state *state)
{
 switch (state->search_mode) {
 case 130:
  if (STV090x_WRITE_DEMOD(state, FECM, 0x10) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, PRVIT, 0x3f) < 0)
   goto err;
  break;
 case 128:
  if (STV090x_WRITE_DEMOD(state, FECM, 0x00) < 0)
   goto err;
  switch (state->fec) {
  case 136:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x01) < 0)
    goto err;
   break;

  case 135:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x02) < 0)
    goto err;
   break;

  case 134:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x04) < 0)
    goto err;
   break;

  case 133:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x08) < 0)
    goto err;
   break;

  case 131:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x20) < 0)
    goto err;
   break;

  default:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x2f) < 0)
    goto err;
   break;
  }
  break;
 case 129:
  if (STV090x_WRITE_DEMOD(state, FECM, 0x80) < 0)
   goto err;
  switch (state->fec) {
  case 136:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x01) < 0)
    goto err;
   break;

  case 135:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x02) < 0)
    goto err;
   break;

  case 132:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x10) < 0)
    goto err;
   break;

  default:
   if (STV090x_WRITE_DEMOD(state, PRVIT, 0x13) < 0)
    goto err;
   break;
  }
  break;
 default:
  break;
 }
 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
