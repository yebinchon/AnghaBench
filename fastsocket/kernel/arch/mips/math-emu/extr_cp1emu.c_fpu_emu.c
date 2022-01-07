
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_91__ TYPE_76__ ;
typedef struct TYPE_90__ TYPE_75__ ;
typedef struct TYPE_89__ TYPE_1__ ;


struct pt_regs {int * regs; } ;
struct mips_fpu_struct {unsigned int fcr31; int * fpr; } ;
typedef void* s64 ;
typedef int mips_instruction ;
struct TYPE_89__ {int bits; } ;
typedef TYPE_1__ ieee754sp ;
typedef TYPE_1__ ieee754dp ;
struct TYPE_91__ {int cp1ops; } ;
struct TYPE_90__ {unsigned int rm; } ;


 int DITOREG (void*,int) ;
 int DPFROMREG (TYPE_1__,size_t) ;
 int DPTOREG (TYPE_1__,int) ;
 int FPU_CSR_ALL_E ;
 unsigned int FPU_CSR_ALL_X ;
 unsigned int FPU_CSR_COND ;
 unsigned int FPU_CSR_DIV_S ;
 unsigned int FPU_CSR_DIV_X ;
 unsigned int FPU_CSR_INE_S ;
 unsigned int FPU_CSR_INE_X ;
 unsigned int FPU_CSR_INV_S ;
 unsigned int FPU_CSR_INV_X ;
 unsigned int FPU_CSR_OVF_S ;
 unsigned int FPU_CSR_OVF_X ;
 unsigned int FPU_CSR_UDF_S ;
 unsigned int FPU_CSR_UDF_X ;
 int IEEE754_INEXACT ;
 int IEEE754_INVALID_OPERATION ;
 int IEEE754_OVERFLOW ;
 int IEEE754_UNDERFLOW ;
 int IEEE754_ZERO_DIVIDE ;
 int MIPSInst_FD (int ) ;
 int MIPSInst_FFMT (int ) ;
 size_t MIPSInst_FS (int ) ;
 size_t MIPSInst_FT (int ) ;
 int MIPSInst_FUNC (int ) ;
 int SIGFPE ;
 int SIGILL ;
 int SITOREG (int,int) ;
 int SPFROMREG (TYPE_1__,size_t) ;
 int SPTOREG (TYPE_1__,int) ;
 int * cmptab ;





 int fcmp_op ;
 TYPE_1__ fpemu_dp_recip (TYPE_1__) ;
 TYPE_1__ fpemu_dp_rsqrt (TYPE_1__) ;
 TYPE_1__ fpemu_sp_recip (TYPE_1__) ;
 TYPE_1__ fpemu_sp_rsqrt (TYPE_1__) ;
 unsigned int* fpucondbit ;
 TYPE_76__ fpuemustats ;
 TYPE_75__ ieee754_csr ;
 int ieee754_cxtest (int ) ;
 TYPE_1__ ieee754dp_abs (TYPE_1__) ;
 TYPE_1__ ieee754dp_add (TYPE_1__,TYPE_1__) ;
 int ieee754dp_cmp (TYPE_1__,TYPE_1__,int ,unsigned int) ;
 TYPE_1__ ieee754dp_div (TYPE_1__,TYPE_1__) ;
 TYPE_1__ ieee754dp_fint (int ) ;
 TYPE_1__ ieee754dp_flong (int ) ;
 TYPE_1__ ieee754dp_fsp (TYPE_1__) ;
 TYPE_1__ ieee754dp_mul (TYPE_1__,TYPE_1__) ;
 TYPE_1__ ieee754dp_neg (TYPE_1__) ;
 TYPE_1__ ieee754dp_sqrt (TYPE_1__) ;
 TYPE_1__ ieee754dp_sub (TYPE_1__,TYPE_1__) ;
 void* ieee754dp_tint (TYPE_1__) ;
 void* ieee754dp_tlong (TYPE_1__) ;
 TYPE_1__ ieee754sp_abs (TYPE_1__) ;
 TYPE_1__ ieee754sp_add (TYPE_1__,TYPE_1__) ;
 int ieee754sp_cmp (TYPE_1__,TYPE_1__,int ,unsigned int) ;
 TYPE_1__ ieee754sp_div (TYPE_1__,TYPE_1__) ;
 TYPE_1__ ieee754sp_fdp (TYPE_1__) ;
 TYPE_1__ ieee754sp_fint (int ) ;
 TYPE_1__ ieee754sp_flong (int ) ;
 TYPE_1__ ieee754sp_mul (TYPE_1__,TYPE_1__) ;
 TYPE_1__ ieee754sp_neg (TYPE_1__) ;
 TYPE_1__ ieee754sp_sqrt (TYPE_1__) ;
 TYPE_1__ ieee754sp_sub (TYPE_1__,TYPE_1__) ;
 void* ieee754sp_tint (TYPE_1__) ;
 void* ieee754sp_tlong (TYPE_1__) ;
 void** ieee_rm ;


 TYPE_1__ stub1 (TYPE_1__,TYPE_1__) ;
 TYPE_1__ stub2 (TYPE_1__) ;
 TYPE_1__ stub3 (TYPE_1__,TYPE_1__) ;
 TYPE_1__ stub4 (TYPE_1__) ;


__attribute__((used)) static int fpu_emu(struct pt_regs *xcp, struct mips_fpu_struct *ctx,
 mips_instruction ir)
{
 int rfmt;
 unsigned rcsr = 0;
 unsigned cond;
 union {
  ieee754dp d;
  ieee754sp s;
  int w;



 } rv;

 fpuemustats.cp1ops++;
 switch (rfmt = (MIPSInst_FFMT(ir) & 0xf)) {
 case 129:{
  union {
   ieee754sp(*b) (ieee754sp, ieee754sp);
   ieee754sp(*u) (ieee754sp);
  } handler;

  switch (MIPSInst_FUNC(ir)) {

  case 154:
   handler.b = ieee754sp_add;
   goto scopbop;
  case 133:
   handler.b = ieee754sp_sub;
   goto scopbop;
  case 140:
   handler.b = ieee754sp_mul;
   goto scopbop;
  case 147:
   handler.b = ieee754sp_div;
   goto scopbop;
  case 155:
   handler.u = ieee754sp_abs;
   goto scopuop;
  case 139:
   handler.u = ieee754sp_neg;
   goto scopuop;
  case 144:

   SPFROMREG(rv.s, MIPSInst_FS(ir));
   goto copcsr;


        scopbop:
   {
    ieee754sp fs, ft;

    SPFROMREG(fs, MIPSInst_FS(ir));
    SPFROMREG(ft, MIPSInst_FT(ir));

    rv.s = (*handler.b) (fs, ft);
    goto copcsr;
   }
        scopuop:
   {
    ieee754sp fs;

    SPFROMREG(fs, MIPSInst_FS(ir));
    rv.s = (*handler.u) (fs);
    goto copcsr;
   }
        copcsr:
   if (ieee754_cxtest(IEEE754_INEXACT))
    rcsr |= FPU_CSR_INE_X | FPU_CSR_INE_S;
   if (ieee754_cxtest(IEEE754_UNDERFLOW))
    rcsr |= FPU_CSR_UDF_X | FPU_CSR_UDF_S;
   if (ieee754_cxtest(IEEE754_OVERFLOW))
    rcsr |= FPU_CSR_OVF_X | FPU_CSR_OVF_S;
   if (ieee754_cxtest(IEEE754_ZERO_DIVIDE))
    rcsr |= FPU_CSR_DIV_X | FPU_CSR_DIV_S;
   if (ieee754_cxtest(IEEE754_INVALID_OPERATION))
    rcsr |= FPU_CSR_INV_X | FPU_CSR_INV_S;
   break;


  case 149:
   return SIGILL;
  case 151:{
   ieee754sp fs;

   SPFROMREG(fs, MIPSInst_FS(ir));
   rv.d = ieee754dp_fsp(fs);
   rfmt = 156;
   goto copcsr;
  }
  case 148:{
   ieee754sp fs;

   SPFROMREG(fs, MIPSInst_FS(ir));
   rv.w = ieee754sp_tint(fs);
   rfmt = 128;
   goto copcsr;
  }
  default:
   if (MIPSInst_FUNC(ir) >= fcmp_op) {
    unsigned cmpop = MIPSInst_FUNC(ir) - fcmp_op;
    ieee754sp fs, ft;

    SPFROMREG(fs, MIPSInst_FS(ir));
    SPFROMREG(ft, MIPSInst_FT(ir));
    rv.w = ieee754sp_cmp(fs, ft,
     cmptab[cmpop & 0x7], cmpop & 0x8);
    rfmt = -1;
    if ((cmpop & 0x8) && ieee754_cxtest
     (IEEE754_INVALID_OPERATION))
     rcsr = FPU_CSR_INV_X | FPU_CSR_INV_S;
    else
     goto copcsr;

   }
   else {
    return SIGILL;
   }
   break;
  }
  break;
 }

 case 156:{
  union {
   ieee754dp(*b) (ieee754dp, ieee754dp);
   ieee754dp(*u) (ieee754dp);
  } handler;

  switch (MIPSInst_FUNC(ir)) {

  case 154:
   handler.b = ieee754dp_add;
   goto dcopbop;
  case 133:
   handler.b = ieee754dp_sub;
   goto dcopbop;
  case 140:
   handler.b = ieee754dp_mul;
   goto dcopbop;
  case 147:
   handler.b = ieee754dp_div;
   goto dcopbop;
  case 155:
   handler.u = ieee754dp_abs;
   goto dcopuop;

  case 139:
   handler.u = ieee754dp_neg;
   goto dcopuop;

  case 144:

   DPFROMREG(rv.d, MIPSInst_FS(ir));
   goto copcsr;


        dcopbop:{
    ieee754dp fs, ft;

    DPFROMREG(fs, MIPSInst_FS(ir));
    DPFROMREG(ft, MIPSInst_FT(ir));

    rv.d = (*handler.b) (fs, ft);
    goto copcsr;
   }
        dcopuop:{
    ieee754dp fs;

    DPFROMREG(fs, MIPSInst_FS(ir));
    rv.d = (*handler.u) (fs);
    goto copcsr;
   }


  case 149:{
   ieee754dp fs;

   DPFROMREG(fs, MIPSInst_FS(ir));
   rv.s = ieee754sp_fdp(fs);
   rfmt = 129;
   goto copcsr;
  }
  case 151:
   return SIGILL;

  case 148:{
   ieee754dp fs;

   DPFROMREG(fs, MIPSInst_FS(ir));
   rv.w = ieee754dp_tint(fs);
   rfmt = 128;
   goto copcsr;
  }
  default:
   if (MIPSInst_FUNC(ir) >= fcmp_op) {
    unsigned cmpop = MIPSInst_FUNC(ir) - fcmp_op;
    ieee754dp fs, ft;

    DPFROMREG(fs, MIPSInst_FS(ir));
    DPFROMREG(ft, MIPSInst_FT(ir));
    rv.w = ieee754dp_cmp(fs, ft,
     cmptab[cmpop & 0x7], cmpop & 0x8);
    rfmt = -1;
    if ((cmpop & 0x8)
     &&
     ieee754_cxtest
     (IEEE754_INVALID_OPERATION))
     rcsr = FPU_CSR_INV_X | FPU_CSR_INV_S;
    else
     goto copcsr;

   }
   else {
    return SIGILL;
   }
   break;
  }
  break;
 }

 case 128:{
  ieee754sp fs;

  switch (MIPSInst_FUNC(ir)) {
  case 149:

   SPFROMREG(fs, MIPSInst_FS(ir));
   rv.s = ieee754sp_fint(fs.bits);
   rfmt = 129;
   goto copcsr;
  case 151:

   SPFROMREG(fs, MIPSInst_FS(ir));
   rv.d = ieee754dp_fint(fs.bits);
   rfmt = 156;
   goto copcsr;
  default:
   return SIGILL;
  }
  break;
 }
 default:
  return SIGILL;
 }
 ctx->fcr31 = (ctx->fcr31 & ~FPU_CSR_ALL_X) | rcsr;
 if ((ctx->fcr31 >> 5) & ctx->fcr31 & FPU_CSR_ALL_E) {

  return SIGFPE;
 }




 switch (rfmt) {
 case -1:{



  cond = FPU_CSR_COND;

  if (rv.w)
   ctx->fcr31 |= cond;
  else
   ctx->fcr31 &= ~cond;
  break;
 }
 case 156:
  DPTOREG(rv.d, MIPSInst_FD(ir));
  break;
 case 129:
  SPTOREG(rv.s, MIPSInst_FD(ir));
  break;
 case 128:
  SITOREG(rv.w, MIPSInst_FD(ir));
  break;





 default:
  return SIGILL;
 }

 return 0;
}
