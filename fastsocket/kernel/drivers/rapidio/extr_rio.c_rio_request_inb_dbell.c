
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_mport {int * riores; } ;
struct resource {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t RIO_DOORBELL_RESOURCE ;
 int kfree (struct resource*) ;
 struct resource* kmalloc (int,int ) ;
 int request_resource (int *,struct resource*) ;
 int rio_init_dbell_res (struct resource*,int ,int ) ;
 int rio_setup_inb_dbell (struct rio_mport*,void*,struct resource*,void (*) (struct rio_mport*,void*,int ,int ,int )) ;

int rio_request_inb_dbell(struct rio_mport *mport,
     void *dev_id,
     u16 start,
     u16 end,
     void (*dinb) (struct rio_mport * mport, void *dev_id, u16 src,
     u16 dst, u16 info))
{
 int rc = 0;

 struct resource *res = kmalloc(sizeof(struct resource), GFP_KERNEL);

 if (res) {
  rio_init_dbell_res(res, start, end);


  if ((rc =
       request_resource(&mport->riores[RIO_DOORBELL_RESOURCE],
          res)) < 0) {
   kfree(res);
   goto out;
  }


  rc = rio_setup_inb_dbell(mport, dev_id, res, dinb);
 } else
  rc = -ENOMEM;

      out:
 return rc;
}
