
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dpc_flags; TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {int pdev; } ;


 int ABORT_ISP_ACTIVE ;
 int ISP_ABORT_NEEDED ;
 int ISP_ABORT_RETRY ;
 TYPE_2__* pci_get_drvdata (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int
qla2x00_reset_active(scsi_qla_host_t *vha)
{
 scsi_qla_host_t *base_vha = pci_get_drvdata(vha->hw->pdev);


 return test_bit(ISP_ABORT_NEEDED, &base_vha->dpc_flags) ||
     test_bit(ABORT_ISP_ACTIVE, &base_vha->dpc_flags) ||
     test_bit(ISP_ABORT_RETRY, &base_vha->dpc_flags) ||
     test_bit(ISP_ABORT_NEEDED, &vha->dpc_flags) ||
     test_bit(ABORT_ISP_ACTIVE, &vha->dpc_flags);
}
