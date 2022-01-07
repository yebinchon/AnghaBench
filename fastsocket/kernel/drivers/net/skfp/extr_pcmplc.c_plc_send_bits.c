
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d_plc; } ;
struct s_smc {TYPE_1__ debug; } ;
struct s_phy {int np; int* t_val; int bitn; } ;
struct TYPE_4__ {int d_plc; } ;


 int PLC (int,int ) ;
 int PL_PCM_SIGNAL ;
 int PL_STATUS_B ;
 int PL_VECTOR_LEN ;
 int PL_XMIT_VECTOR ;
 int SK_UNUSED (struct s_smc*) ;
 TYPE_2__ debug ;
 int inpw (int ) ;
 int outpw (int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int plc_send_bits(struct s_smc *smc, struct s_phy *phy, int len)
{
 int np = phy->np ;
 int n ;
 int i ;

 SK_UNUSED(smc) ;


 for (i = len-1,n = 0 ; i >= 0 ; i--) {
  n = (n<<1) | phy->t_val[phy->bitn+i] ;
 }
 if (inpw(PLC(np,PL_STATUS_B)) & PL_PCM_SIGNAL) {



  return(1) ;
 }

 outpw(PLC(np,PL_VECTOR_LEN),len-1) ;
 outpw(PLC(np,PL_XMIT_VECTOR),n) ;
 return(0) ;
}
