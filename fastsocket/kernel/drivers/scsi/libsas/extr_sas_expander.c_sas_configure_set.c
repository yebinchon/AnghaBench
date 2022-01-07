
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct domain_device {int* sas_addr; } ;
typedef int __be16 ;


 int CRI_REQ_SIZE ;
 int CRI_RESP_SIZE ;
 int ENOMEM ;
 scalar_t__ SAS_ADDR (int*) ;
 int SAS_ADDR_SIZE ;
 int SAS_DPRINTK (char*,scalar_t__,int,int) ;
 int SMP_CONF_ROUTE_INFO ;
 int SMP_RESP_NO_INDEX ;
 int* alloc_smp_req (int ) ;
 int* alloc_smp_resp (int ) ;
 int cpu_to_be16 (int) ;
 int kfree (int*) ;
 int memcpy (int*,int*,int ) ;
 int smp_execute_task (struct domain_device*,int*,int ,int*,int ) ;

__attribute__((used)) static int sas_configure_set(struct domain_device *dev, int phy_id,
        u8 *sas_addr, int index, int include)
{
 int res;
 u8 *cri_req;
 u8 *cri_resp;

 cri_req = alloc_smp_req(CRI_REQ_SIZE);
 if (!cri_req)
  return -ENOMEM;

 cri_resp = alloc_smp_resp(CRI_RESP_SIZE);
 if (!cri_resp) {
  kfree(cri_req);
  return -ENOMEM;
 }

 cri_req[1] = SMP_CONF_ROUTE_INFO;
 *(__be16 *)(cri_req+6) = cpu_to_be16(index);
 cri_req[9] = phy_id;
 if (SAS_ADDR(sas_addr) == 0 || !include)
  cri_req[12] |= 0x80;
 memcpy(cri_req+16, sas_addr, SAS_ADDR_SIZE);

 res = smp_execute_task(dev, cri_req, CRI_REQ_SIZE, cri_resp,
          CRI_RESP_SIZE);
 if (res)
  goto out;
 res = cri_resp[2];
 if (res == SMP_RESP_NO_INDEX) {
  SAS_DPRINTK("overflow of indexes: dev %016llx phy 0x%x "
       "index 0x%x\n",
       SAS_ADDR(dev->sas_addr), phy_id, index);
 }
out:
 kfree(cri_req);
 kfree(cri_resp);
 return res;
}
