
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bteinfo_s {int bte_num; int bte_cnode; int bte_error_count; scalar_t__ bh_error; } ;
struct TYPE_4__ {scalar_t__ ie_errortype; } ;
typedef TYPE_1__ ioerror_t ;
typedef int cnodeid_t ;
struct TYPE_5__ {struct bteinfo_s* bte_if; } ;


 scalar_t__ BTEFAIL_OFFSET ;
 int BTE_PRINTK (char*) ;
 TYPE_3__* NODEPDA (int ) ;
 int bte_error_handler (unsigned long) ;

void
bte_crb_error_handler(cnodeid_t cnode, int btenum,
                      int crbnum, ioerror_t * ioe, int bteop)
{
 struct bteinfo_s *bte;


 bte = &(NODEPDA(cnode)->bte_if[btenum]);






 bte->bh_error = ioe->ie_errortype + BTEFAIL_OFFSET;
 bte->bte_error_count++;

 BTE_PRINTK(("Got an error on cnode %d bte %d: HW error type 0x%x\n",
  bte->bte_cnode, bte->bte_num, ioe->ie_errortype));
 bte_error_handler((unsigned long) NODEPDA(cnode));
}
