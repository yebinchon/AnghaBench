
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct op {int flags; scalar_t__ (* fn ) (unsigned int,unsigned int,unsigned int,scalar_t__) ;} ;


 size_t FEXT_TO_IDX (scalar_t__) ;
 scalar_t__ FOP_EXT ;
 scalar_t__ FOP_MASK ;
 size_t FOP_TO_IDX (scalar_t__) ;
 unsigned int FPSCR_LENGTH_BIT ;
 scalar_t__ FPSCR_LENGTH_MASK ;
 scalar_t__ FPSCR_STRIDE_MASK ;
 unsigned int FREG_BANK (unsigned int) ;
 unsigned int FREG_IDX (unsigned int) ;
 int OP_SCALAR ;
 int OP_SD ;
 int OP_SM ;
 struct op* fops ;
 struct op* fops_ext ;
 int pr_debug (char*,unsigned int,scalar_t__,...) ;
 scalar_t__ stub1 (unsigned int,unsigned int,unsigned int,scalar_t__) ;
 unsigned int vfp_get_dd (scalar_t__) ;
 unsigned int vfp_get_dm (scalar_t__) ;
 unsigned int vfp_get_dn (scalar_t__) ;
 unsigned int vfp_get_sd (scalar_t__) ;
 unsigned int vfp_get_sm (scalar_t__) ;

u32 vfp_double_cpdo(u32 inst, u32 fpscr)
{
 u32 op = inst & FOP_MASK;
 u32 exceptions = 0;
 unsigned int dest;
 unsigned int dn = vfp_get_dn(inst);
 unsigned int dm;
 unsigned int vecitr, veclen, vecstride;
 struct op *fop;

 vecstride = (1 + ((fpscr & FPSCR_STRIDE_MASK) == FPSCR_STRIDE_MASK));

 fop = (op == FOP_EXT) ? &fops_ext[FEXT_TO_IDX(inst)] : &fops[FOP_TO_IDX(op)];





 if (fop->flags & OP_SD)
  dest = vfp_get_sd(inst);
 else
  dest = vfp_get_dd(inst);




 if (fop->flags & OP_SM)
  dm = vfp_get_sm(inst);
 else
  dm = vfp_get_dm(inst);





 if ((fop->flags & OP_SCALAR) || (FREG_BANK(dest) == 0))
  veclen = 0;
 else
  veclen = fpscr & FPSCR_LENGTH_MASK;

 pr_debug("VFP: vecstride=%u veclen=%u\n", vecstride,
   (veclen >> FPSCR_LENGTH_BIT) + 1);

 if (!fop->fn)
  goto invalid;

 for (vecitr = 0; vecitr <= veclen; vecitr += 1 << FPSCR_LENGTH_BIT) {
  u32 except;
  char type;

  type = fop->flags & OP_SD ? 's' : 'd';
  if (op == FOP_EXT)
   pr_debug("VFP: itr%d (%c%u) = op[%u] (d%u)\n",
     vecitr >> FPSCR_LENGTH_BIT,
     type, dest, dn, dm);
  else
   pr_debug("VFP: itr%d (%c%u) = (d%u) op[%u] (d%u)\n",
     vecitr >> FPSCR_LENGTH_BIT,
     type, dest, dn, FOP_TO_IDX(op), dm);

  except = fop->fn(dest, dn, dm, fpscr);
  pr_debug("VFP: itr%d: exceptions=%08x\n",
    vecitr >> FPSCR_LENGTH_BIT, except);

  exceptions |= except;





  dest = FREG_BANK(dest) + ((FREG_IDX(dest) + vecstride) & 3);
  dn = FREG_BANK(dn) + ((FREG_IDX(dn) + vecstride) & 3);
  if (FREG_BANK(dm) != 0)
   dm = FREG_BANK(dm) + ((FREG_IDX(dm) + vecstride) & 3);
 }
 return exceptions;

 invalid:
 return ~0;
}
