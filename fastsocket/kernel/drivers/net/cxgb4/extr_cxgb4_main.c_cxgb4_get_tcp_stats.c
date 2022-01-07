
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_tcp_stats {int dummy; } ;
struct pci_dev {int dummy; } ;
struct adapter {int stats_lock; } ;


 struct adapter* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_tp_get_tcp_stats (struct adapter*,struct tp_tcp_stats*,struct tp_tcp_stats*) ;

void cxgb4_get_tcp_stats(struct pci_dev *pdev, struct tp_tcp_stats *v4,
    struct tp_tcp_stats *v6)
{
 struct adapter *adap = pci_get_drvdata(pdev);

 spin_lock(&adap->stats_lock);
 t4_tp_get_tcp_stats(adap, v4, v6);
 spin_unlock(&adap->stats_lock);
}
