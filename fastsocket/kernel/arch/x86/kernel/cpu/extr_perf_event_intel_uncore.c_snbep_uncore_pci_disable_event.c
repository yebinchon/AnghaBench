
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {struct pci_dev* pci_dev; } ;


 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void snbep_uncore_pci_disable_event(struct intel_uncore_box *box, struct perf_event *event)
{
 struct pci_dev *pdev = box->pci_dev;
 struct hw_perf_event *hwc = &event->hw;

 pci_write_config_dword(pdev, hwc->config_base, hwc->config);
}
