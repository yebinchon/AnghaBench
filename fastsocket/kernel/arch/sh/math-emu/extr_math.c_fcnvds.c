
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;


 int D ;
 int DRn ;
 int FPUL ;
 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int Fn ;
 int Fr ;
 int PACK_S (int ,int ) ;
 int S ;
 int UNPACK_D (int ,int ) ;

__attribute__((used)) static int fcnvds(struct sh_fpu_soft_struct *fregs, int n)
{
 FP_DECL_EX;
 FP_DECL_D(Fn);
 FP_DECL_S(Fr);
 UNPACK_D(Fn, DRn);
 FP_CONV(S, D, 1, 2, Fr, Fn);
 PACK_S(FPUL, Fr);
 return 0;
}
