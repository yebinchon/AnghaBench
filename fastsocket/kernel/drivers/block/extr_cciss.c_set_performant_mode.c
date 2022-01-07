
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ transMethod; int* blockFetchTable; } ;
typedef TYPE_2__ ctlr_info_t ;
struct TYPE_6__ {size_t SGList; } ;
struct TYPE_8__ {int busaddr; TYPE_1__ Header; } ;
typedef TYPE_3__ CommandList_struct ;


 scalar_t__ CFGTBL_Trans_Performant ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void set_performant_mode(ctlr_info_t *h, CommandList_struct *c)
{
 if (likely(h->transMethod == CFGTBL_Trans_Performant))
  c->busaddr |= 1 | (h->blockFetchTable[c->Header.SGList] << 1);
}
