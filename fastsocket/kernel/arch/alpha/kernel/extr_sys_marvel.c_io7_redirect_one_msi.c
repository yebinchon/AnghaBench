
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct io7 {TYPE_2__* csrs; } ;
struct TYPE_4__ {TYPE_1__* PO7_MSI_CTL; } ;
struct TYPE_3__ {unsigned long csr; } ;


 int mb () ;

__attribute__((used)) static void
io7_redirect_one_msi(struct io7 *io7, unsigned int which, unsigned int where)
{
 unsigned long val;




 val = io7->csrs->PO7_MSI_CTL[which].csr;
 val &= ~(0x1ffUL << 14);
 val |= ((unsigned long)where << 14);

 io7->csrs->PO7_MSI_CTL[which].csr = val;
 mb();
 io7->csrs->PO7_MSI_CTL[which].csr;
}
