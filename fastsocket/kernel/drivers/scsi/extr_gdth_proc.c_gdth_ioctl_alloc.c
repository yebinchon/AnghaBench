
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong64 ;
typedef int ulong ;
struct TYPE_3__ {char* pscratch; int smp_lock; int pdev; int scratch_phys; scalar_t__ scratch_busy; } ;
typedef TYPE_1__ gdth_ha_str ;
typedef int dma_addr_t ;


 int GDTH_SCRATCH ;
 scalar_t__ TRUE ;
 char* pci_alloc_consistent (int ,int,int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static char *gdth_ioctl_alloc(gdth_ha_str *ha, int size, int scratch,
                              ulong64 *paddr)
{
    ulong flags;
    char *ret_val;

    if (size == 0)
        return ((void*)0);

    spin_lock_irqsave(&ha->smp_lock, flags);

    if (!ha->scratch_busy && size <= GDTH_SCRATCH) {
        ha->scratch_busy = TRUE;
        ret_val = ha->pscratch;
        *paddr = ha->scratch_phys;
    } else if (scratch) {
        ret_val = ((void*)0);
    } else {
        dma_addr_t dma_addr;

        ret_val = pci_alloc_consistent(ha->pdev, size, &dma_addr);
        *paddr = dma_addr;
    }

    spin_unlock_irqrestore(&ha->smp_lock, flags);
    return ret_val;
}
