
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct discover_resp {int attached_sas_addr; } ;
struct smp_resp {struct discover_resp disc; } ;
struct domain_device {int sas_addr; } ;


 int DISCOVER_REQ_SIZE ;
 int DISCOVER_RESP_SIZE ;
 int SAS_ADDR_SIZE ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int sas_printk (char*) ;
 int sas_set_ex_phy (struct domain_device*,int,int*) ;
 int smp_execute_task (struct domain_device*,int*,int ,int*,int ) ;

__attribute__((used)) static int sas_ex_phy_discover_helper(struct domain_device *dev, u8 *disc_req,
          u8 *disc_resp, int single)
{
 struct discover_resp *dr;
 int res;

 disc_req[9] = single;

 res = smp_execute_task(dev, disc_req, DISCOVER_REQ_SIZE,
          disc_resp, DISCOVER_RESP_SIZE);
 if (res)
  return res;
 dr = &((struct smp_resp *)disc_resp)->disc;
 if (memcmp(dev->sas_addr, dr->attached_sas_addr, SAS_ADDR_SIZE) == 0) {
  sas_printk("Found loopback topology, just ignore it!\n");
  return 0;
 }
 sas_set_ex_phy(dev, single, disc_resp);
 return 0;
}
