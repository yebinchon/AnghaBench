
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_features {scalar_t__ mode; int error_if_no_space; int discard_passdown; int discard_enabled; int zero_new_blocks; } ;


 int DMEMIT (char*,...) ;
 scalar_t__ PM_READ_ONLY ;

__attribute__((used)) static void emit_flags(struct pool_features *pf, char *result,
         unsigned sz, unsigned maxlen)
{
 unsigned count = !pf->zero_new_blocks + !pf->discard_enabled +
  !pf->discard_passdown + (pf->mode == PM_READ_ONLY) +
  pf->error_if_no_space;
 DMEMIT("%u ", count);

 if (!pf->zero_new_blocks)
  DMEMIT("skip_block_zeroing ");

 if (!pf->discard_enabled)
  DMEMIT("ignore_discard ");

 if (!pf->discard_passdown)
  DMEMIT("no_discard_passdown ");

 if (pf->mode == PM_READ_ONLY)
  DMEMIT("read_only ");

 if (pf->error_if_no_space)
  DMEMIT("error_if_no_space ");
}
