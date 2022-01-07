
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int sbq_len; int lbq_len; int * lbq; int * lbq_base; int lbq_base_dma; int lbq_size; int * sbq; int * sbq_base; int sbq_base_dma; int sbq_size; int * cq_base; int cq_base_dma; int cq_size; } ;
struct ql_adapter {int ndev; int pdev; } ;
struct bq_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ifup ;
 void* kmalloc (int,int ) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 void* pci_alloc_consistent (int ,int ,int *) ;
 int ql_free_rx_resources (struct ql_adapter*,struct rx_ring*) ;
 int ql_init_lbq_ring (struct ql_adapter*,struct rx_ring*) ;
 int ql_init_sbq_ring (struct ql_adapter*,struct rx_ring*) ;

__attribute__((used)) static int ql_alloc_rx_resources(struct ql_adapter *qdev,
     struct rx_ring *rx_ring)
{




 rx_ring->cq_base =
     pci_alloc_consistent(qdev->pdev, rx_ring->cq_size,
     &rx_ring->cq_base_dma);

 if (rx_ring->cq_base == ((void*)0)) {
  netif_err(qdev, ifup, qdev->ndev, "rx_ring alloc failed.\n");
  return -ENOMEM;
 }

 if (rx_ring->sbq_len) {



  rx_ring->sbq_base =
      pci_alloc_consistent(qdev->pdev, rx_ring->sbq_size,
      &rx_ring->sbq_base_dma);

  if (rx_ring->sbq_base == ((void*)0)) {
   netif_err(qdev, ifup, qdev->ndev,
      "Small buffer queue allocation failed.\n");
   goto err_mem;
  }




  rx_ring->sbq =
      kmalloc(rx_ring->sbq_len * sizeof(struct bq_desc),
       GFP_KERNEL);
  if (rx_ring->sbq == ((void*)0)) {
   netif_err(qdev, ifup, qdev->ndev,
      "Small buffer queue control block allocation failed.\n");
   goto err_mem;
  }

  ql_init_sbq_ring(qdev, rx_ring);
 }

 if (rx_ring->lbq_len) {



  rx_ring->lbq_base =
      pci_alloc_consistent(qdev->pdev, rx_ring->lbq_size,
      &rx_ring->lbq_base_dma);

  if (rx_ring->lbq_base == ((void*)0)) {
   netif_err(qdev, ifup, qdev->ndev,
      "Large buffer queue allocation failed.\n");
   goto err_mem;
  }



  rx_ring->lbq =
      kmalloc(rx_ring->lbq_len * sizeof(struct bq_desc),
       GFP_KERNEL);
  if (rx_ring->lbq == ((void*)0)) {
   netif_err(qdev, ifup, qdev->ndev,
      "Large buffer queue control block allocation failed.\n");
   goto err_mem;
  }

  ql_init_lbq_ring(qdev, rx_ring);
 }

 return 0;

err_mem:
 ql_free_rx_resources(qdev, rx_ring);
 return -ENOMEM;
}
