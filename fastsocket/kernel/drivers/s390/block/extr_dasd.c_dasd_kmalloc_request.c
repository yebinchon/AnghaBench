
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int magic; int flags; struct dasd_ccw_req* cpaddr; int * data; } ;
struct ccw1 {int dummy; } ;


 int BUG_ON (int) ;
 int DASD_CQR_FLAGS_USE_ERP ;
 int ENOMEM ;
 struct dasd_ccw_req* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int PAGE_SIZE ;
 int dasd_get_device (struct dasd_device*) ;
 struct dasd_ccw_req* kcalloc (int,int,int) ;
 int kfree (struct dasd_ccw_req*) ;
 void* kzalloc (int,int) ;
 int set_bit (int ,int *) ;

struct dasd_ccw_req *dasd_kmalloc_request(int magic, int cplength,
       int datasize,
       struct dasd_device *device)
{
 struct dasd_ccw_req *cqr;


 BUG_ON(datasize > PAGE_SIZE ||
      (cplength*sizeof(struct ccw1)) > PAGE_SIZE);

 cqr = kzalloc(sizeof(struct dasd_ccw_req), GFP_ATOMIC);
 if (cqr == ((void*)0))
  return ERR_PTR(-ENOMEM);
 cqr->cpaddr = ((void*)0);
 if (cplength > 0) {
  cqr->cpaddr = kcalloc(cplength, sizeof(struct ccw1),
          GFP_ATOMIC | GFP_DMA);
  if (cqr->cpaddr == ((void*)0)) {
   kfree(cqr);
   return ERR_PTR(-ENOMEM);
  }
 }
 cqr->data = ((void*)0);
 if (datasize > 0) {
  cqr->data = kzalloc(datasize, GFP_ATOMIC | GFP_DMA);
  if (cqr->data == ((void*)0)) {
   kfree(cqr->cpaddr);
   kfree(cqr);
   return ERR_PTR(-ENOMEM);
  }
 }
 cqr->magic = magic;
 set_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
 dasd_get_device(device);
 return cqr;
}
