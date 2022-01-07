
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct expander_device {int num_phys; } ;
struct domain_device {struct expander_device ex_dev; } ;


 int DISCOVER_REQ_SIZE ;
 int DISCOVER_RESP_SIZE ;
 int ENOMEM ;
 int SMP_DISCOVER ;
 int * alloc_smp_req (int ) ;
 int * alloc_smp_resp (int ) ;
 int kfree (int *) ;
 int sas_ex_phy_discover_helper (struct domain_device*,int *,int *,int) ;

int sas_ex_phy_discover(struct domain_device *dev, int single)
{
 struct expander_device *ex = &dev->ex_dev;
 int res = 0;
 u8 *disc_req;
 u8 *disc_resp;

 disc_req = alloc_smp_req(DISCOVER_REQ_SIZE);
 if (!disc_req)
  return -ENOMEM;

 disc_resp = alloc_smp_resp(DISCOVER_RESP_SIZE);
 if (!disc_resp) {
  kfree(disc_req);
  return -ENOMEM;
 }

 disc_req[1] = SMP_DISCOVER;

 if (0 <= single && single < ex->num_phys) {
  res = sas_ex_phy_discover_helper(dev, disc_req, disc_resp, single);
 } else {
  int i;

  for (i = 0; i < ex->num_phys; i++) {
   res = sas_ex_phy_discover_helper(dev, disc_req,
        disc_resp, i);
   if (res)
    goto out_err;
  }
 }
out_err:
 kfree(disc_resp);
 kfree(disc_req);
 return res;
}
