
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong64 ;
typedef int ulong ;
struct TYPE_3__ {char* pscratch; int pdev; int smp_lock; int scratch_busy; } ;
typedef TYPE_1__ gdth_ha_str ;


 int FALSE ;
 int pci_free_consistent (int ,int,char*,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void gdth_ioctl_free(gdth_ha_str *ha, int size, char *buf, ulong64 paddr)
{
    ulong flags;

    if (buf == ha->pscratch) {
 spin_lock_irqsave(&ha->smp_lock, flags);
        ha->scratch_busy = FALSE;
 spin_unlock_irqrestore(&ha->smp_lock, flags);
    } else {
        pci_free_consistent(ha->pdev, size, buf, paddr);
    }
}
