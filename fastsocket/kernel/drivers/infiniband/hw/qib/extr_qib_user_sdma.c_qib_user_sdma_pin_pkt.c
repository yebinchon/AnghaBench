
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_user_sdma_queue {int dummy; } ;
struct qib_user_sdma_pkt {unsigned long naddr; } ;
struct qib_devdata {TYPE_1__* pcidev; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_2__ {int dev; } ;


 int qib_user_sdma_free_pkt_frag (int *,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,unsigned long) ;
 int qib_user_sdma_num_pages (struct iovec const*) ;
 int qib_user_sdma_pin_pages (struct qib_devdata const*,struct qib_user_sdma_pkt*,unsigned long const,int ,int const) ;

__attribute__((used)) static int qib_user_sdma_pin_pkt(const struct qib_devdata *dd,
     struct qib_user_sdma_queue *pq,
     struct qib_user_sdma_pkt *pkt,
     const struct iovec *iov,
     unsigned long niov)
{
 int ret = 0;
 unsigned long idx;

 for (idx = 0; idx < niov; idx++) {
  const int npages = qib_user_sdma_num_pages(iov + idx);
  const unsigned long addr = (unsigned long) iov[idx].iov_base;

  ret = qib_user_sdma_pin_pages(dd, pkt, addr,
           iov[idx].iov_len, npages);
  if (ret < 0)
   goto free_pkt;
 }

 goto done;

free_pkt:
 for (idx = 0; idx < pkt->naddr; idx++)
  qib_user_sdma_free_pkt_frag(&dd->pcidev->dev, pq, pkt, idx);

done:
 return ret;
}
