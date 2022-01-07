
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 scalar_t__ FPUDEBUG ;
 size_t FPU_TYPE_FLAG_POS ;





 int PA2_0_FPU_FLAG ;

 int UNIMPLEMENTEDEXCEPTION ;
 int VASSERT (int) ;
 int decode_06 (int,int*) ;
 int decode_0c (int,int,int,int*) ;
 int decode_0e (int,int,int,int*) ;
 int decode_26 (int,int*) ;
 int decode_2e (int,int*) ;
 int get_class (int) ;
 int get_subop (int) ;
 int get_subop1_PA1_1 (int) ;
 int get_subop1_PA2_0 (int) ;
 int parisc_linux_get_fpu_type (int*) ;
 int printk (char*,int,int) ;

u_int
fpudispatch(u_int ir, u_int excp_code, u_int holder, u_int fpregs[])
{
 u_int class, subop;
 u_int fpu_type_flags;


 VASSERT(sizeof(int) == 4);

 parisc_linux_get_fpu_type(fpregs);

 fpu_type_flags=fpregs[FPU_TYPE_FLAG_POS];

 class = get_class(ir);
 if (class == 1) {
  if (fpu_type_flags & PA2_0_FPU_FLAG)
   subop = get_subop1_PA2_0(ir);
  else
   subop = get_subop1_PA1_1(ir);
 }
 else
  subop = get_subop(ir);

 if (FPUDEBUG) printk("class %d subop %d\n", class, subop);

 switch (excp_code) {
  case 132:
  case 128:
   return(decode_0c(ir,class,subop,fpregs));
  case 131:
   return(decode_0e(ir,class,subop,fpregs));
  case 133:
   return(decode_06(ir,fpregs));
  case 130:
   return(decode_26(ir,fpregs));
  case 129:
   return(decode_2e(ir,fpregs));
  default:
   return(UNIMPLEMENTEDEXCEPTION);
 }
}
