
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int BUG () ;
 scalar_t__ COPR_INST ;
 int EMULATION_VERSION ;
 size_t FPU_TYPE_FLAG_POS ;
 scalar_t__ MAJOR_0C_EXCP ;
 scalar_t__ NOEXCEPTION ;
 scalar_t__ PA2_0_FPU_FLAG ;
 scalar_t__ dbl_fadd (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_fcmp (scalar_t__*,scalar_t__*,int,scalar_t__*) ;
 scalar_t__ dbl_fdiv (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_fmpy (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_frem (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_frnd (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_fsqrt (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_fsub (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_dbl_fcnvfu (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_dbl_fcnvfut (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_dbl_fcnvfx (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_dbl_fcnvfxt (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_dbl_fcnvuf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_dbl_fcnvxf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_sgl_fcnvff (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_sgl_fcnvfu (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_sgl_fcnvfut (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_sgl_fcnvfx (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_sgl_fcnvfxt (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_sgl_fcnvuf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ dbl_to_sgl_fcnvxf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 int extru (scalar_t__,int ,int) ;
 int fpdfpos ;
 int fpfmtpos ;
 int fpnulpos ;
 int fpr1pos ;
 int fpr2pos ;
 int fptpos ;
 scalar_t__ fpzeroreg ;
 scalar_t__ sgl_fadd (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_fcmp (scalar_t__*,scalar_t__*,int,scalar_t__*) ;
 scalar_t__ sgl_fdiv (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_fmpy (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_frem (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_frnd (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_fsqrt (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_fsub (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_dbl_fcnvff (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_dbl_fcnvfu (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_dbl_fcnvfut (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_dbl_fcnvfx (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_dbl_fcnvfxt (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_dbl_fcnvuf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_dbl_fcnvxf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_sgl_fcnvfu (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_sgl_fcnvfut (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_sgl_fcnvfx (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_sgl_fcnvfxt (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_sgl_fcnvuf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ sgl_to_sgl_fcnvxf (scalar_t__*,int ,scalar_t__*,scalar_t__*) ;
 int update_status_cbit (scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static u_int
decode_0c(u_int ir, u_int class, u_int subop, u_int fpregs[])
{
 u_int r1,r2,t;
 u_int fmt;
 u_int df;
 u_int *status;
 u_int retval, local_status;
 u_int fpu_type_flags;

 if (ir == COPR_INST) {
  fpregs[0] = EMULATION_VERSION << 11;
  return(NOEXCEPTION);
 }
 status = &fpregs[0];
 local_status = fpregs[0];
 r1 = extru(ir,fpr1pos,5) * sizeof(double)/sizeof(u_int);
 if (r1 == 0)
  r1 = fpzeroreg;
 t = extru(ir,fptpos,5) * sizeof(double)/sizeof(u_int);
 if (t == 0 && class != 2)
  return(MAJOR_0C_EXCP);
 fmt = extru(ir,fpfmtpos,2);

 switch (class) {
     case 0:
  switch (subop) {
   case 0:
   case 1:
    return(MAJOR_0C_EXCP);
   case 2:
    switch (fmt) {
        case 2:
     return(MAJOR_0C_EXCP);
        case 3:
     t &= ~3;
     r1 &= ~3;
     fpregs[t+3] = fpregs[r1+3];
     fpregs[t+2] = fpregs[r1+2];
        case 1:
     fpregs[t+1] = fpregs[r1+1];
        case 0:
     fpregs[t] = fpregs[r1];
     return(NOEXCEPTION);
    }
   case 3:
    switch (fmt) {
        case 2:
     return(MAJOR_0C_EXCP);
        case 3:
     t &= ~3;
     r1 &= ~3;
     fpregs[t+3] = fpregs[r1+3];
     fpregs[t+2] = fpregs[r1+2];
        case 1:
     fpregs[t+1] = fpregs[r1+1];
        case 0:

     fpregs[t] = fpregs[r1] & 0x7fffffff;
     return(NOEXCEPTION);
    }
   case 6:
    switch (fmt) {
        case 2:
     return(MAJOR_0C_EXCP);
        case 3:
     t &= ~3;
     r1 &= ~3;
     fpregs[t+3] = fpregs[r1+3];
     fpregs[t+2] = fpregs[r1+2];
        case 1:
     fpregs[t+1] = fpregs[r1+1];
        case 0:

     fpregs[t] = fpregs[r1] ^ 0x80000000;
     return(NOEXCEPTION);
    }
   case 7:
    switch (fmt) {
        case 2:
     return(MAJOR_0C_EXCP);
        case 3:
     t &= ~3;
     r1 &= ~3;
     fpregs[t+3] = fpregs[r1+3];
     fpregs[t+2] = fpregs[r1+2];
        case 1:
     fpregs[t+1] = fpregs[r1+1];
        case 0:

     fpregs[t] = fpregs[r1] | 0x80000000;
     return(NOEXCEPTION);
    }
   case 4:
    switch (fmt) {
        case 0:
     return(sgl_fsqrt(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(dbl_fsqrt(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   case 5:
    switch (fmt) {
        case 0:
     return(sgl_frnd(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(dbl_frnd(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
  }

 case 1:
  df = extru(ir,fpdfpos,2);
  if ((df & 2) || (fmt & 2)) {




   return(MAJOR_0C_EXCP);
  }





  fmt = (fmt << 1) | df;
  switch (subop) {
   case 0:
    switch(fmt) {
        case 0:
     return(MAJOR_0C_EXCP);
        case 1:
     return(sgl_to_dbl_fcnvff(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
     return(dbl_to_sgl_fcnvff(&fpregs[r1],0,
      &fpregs[t],status));
        case 3:
     return(MAJOR_0C_EXCP);
    }
   case 1:
    switch(fmt) {
        case 0:
     return(sgl_to_sgl_fcnvxf(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(sgl_to_dbl_fcnvxf(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
     return(dbl_to_sgl_fcnvxf(&fpregs[r1],0,
      &fpregs[t],status));
        case 3:
     return(dbl_to_dbl_fcnvxf(&fpregs[r1],0,
      &fpregs[t],status));
    }
   case 2:
    switch(fmt) {
        case 0:
     return(sgl_to_sgl_fcnvfx(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(sgl_to_dbl_fcnvfx(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
     return(dbl_to_sgl_fcnvfx(&fpregs[r1],0,
      &fpregs[t],status));
        case 3:
     return(dbl_to_dbl_fcnvfx(&fpregs[r1],0,
      &fpregs[t],status));
    }
   case 3:
    switch(fmt) {
        case 0:
     return(sgl_to_sgl_fcnvfxt(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(sgl_to_dbl_fcnvfxt(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
     return(dbl_to_sgl_fcnvfxt(&fpregs[r1],0,
      &fpregs[t],status));
        case 3:
     return(dbl_to_dbl_fcnvfxt(&fpregs[r1],0,
      &fpregs[t],status));
    }
   case 5:
    switch(fmt) {
        case 0:
     return(sgl_to_sgl_fcnvuf(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(sgl_to_dbl_fcnvuf(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
     return(dbl_to_sgl_fcnvuf(&fpregs[r1],0,
      &fpregs[t],status));
        case 3:
     return(dbl_to_dbl_fcnvuf(&fpregs[r1],0,
      &fpregs[t],status));
    }
   case 6:
    switch(fmt) {
        case 0:
     return(sgl_to_sgl_fcnvfu(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(sgl_to_dbl_fcnvfu(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
     return(dbl_to_sgl_fcnvfu(&fpregs[r1],0,
      &fpregs[t],status));
        case 3:
     return(dbl_to_dbl_fcnvfu(&fpregs[r1],0,
      &fpregs[t],status));
    }
   case 7:
    switch(fmt) {
        case 0:
     return(sgl_to_sgl_fcnvfut(&fpregs[r1],0,
      &fpregs[t],status));
        case 1:
     return(sgl_to_dbl_fcnvfut(&fpregs[r1],0,
      &fpregs[t],status));
        case 2:
     return(dbl_to_sgl_fcnvfut(&fpregs[r1],0,
      &fpregs[t],status));
        case 3:
     return(dbl_to_dbl_fcnvfut(&fpregs[r1],0,
      &fpregs[t],status));
    }
   case 4:
    return(MAJOR_0C_EXCP);
  }

 case 2:
  fpu_type_flags=fpregs[FPU_TYPE_FLAG_POS];
  r2 = extru(ir, fpr2pos, 5) * sizeof(double)/sizeof(u_int);
  if (r2 == 0)
   r2 = fpzeroreg;
  if (fpu_type_flags & PA2_0_FPU_FLAG) {

   if (extru(ir, fpnulpos, 1)) {
    switch (fmt) {
        case 0:






     BUG();




        case 1:
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   } else {
    switch (fmt) {
        case 0:
     retval = sgl_fcmp(&fpregs[r1],
      &fpregs[r2],extru(ir,fptpos,5),
      &local_status);
     update_status_cbit(status,local_status,
      fpu_type_flags, subop);
     return(retval);
        case 1:
     retval = dbl_fcmp(&fpregs[r1],
      &fpregs[r2],extru(ir,fptpos,5),
      &local_status);
     update_status_cbit(status,local_status,
      fpu_type_flags, subop);
     return(retval);
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   }
  }
  else {
      switch (subop) {
   case 2:
   case 3:
   case 4:
   case 5:
   case 6:
   case 7:
    return(MAJOR_0C_EXCP);
   case 0:
    switch (fmt) {
        case 0:
     retval = sgl_fcmp(&fpregs[r1],
      &fpregs[r2],extru(ir,fptpos,5),
      &local_status);
     update_status_cbit(status,local_status,
      fpu_type_flags, subop);
     return(retval);
        case 1:
     retval = dbl_fcmp(&fpregs[r1],
      &fpregs[r2],extru(ir,fptpos,5),
      &local_status);
     update_status_cbit(status,local_status,
      fpu_type_flags, subop);
     return(retval);
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   case 1:
    switch (fmt) {
        case 0:






     BUG();




        case 1:
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
      }
  }
 case 3:
  r2 = extru(ir,fpr2pos,5) * sizeof(double)/sizeof(u_int);
  if (r2 == 0)
   r2 = fpzeroreg;
  switch (subop) {
   case 5:
   case 6:
   case 7:
    return(MAJOR_0C_EXCP);

   case 0:
    switch (fmt) {
        case 0:
     return(sgl_fadd(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 1:
     return(dbl_fadd(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   case 1:
    switch (fmt) {
        case 0:
     return(sgl_fsub(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 1:
     return(dbl_fsub(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   case 2:
    switch (fmt) {
        case 0:
     return(sgl_fmpy(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 1:
     return(dbl_fmpy(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   case 3:
    switch (fmt) {
        case 0:
     return(sgl_fdiv(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 1:
     return(dbl_fdiv(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
   case 4:
    switch (fmt) {
        case 0:
     return(sgl_frem(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 1:
     return(dbl_frem(&fpregs[r1],&fpregs[r2],
      &fpregs[t],status));
        case 2:
        case 3:
     return(MAJOR_0C_EXCP);
    }
  }
 }


 return(MAJOR_0C_EXCP);
}
