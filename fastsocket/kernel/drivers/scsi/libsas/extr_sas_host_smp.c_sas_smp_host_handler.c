
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sas_ha_struct {int num_phys; } ;
struct request {int resid_len; int bio; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int* name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KM_USER0 ;
 scalar_t__ PAGE_SIZE ;
 int const SAS_EXPANDER_PRODUCT_ID_LEN ;
 int const SAS_EXPANDER_VENDOR_ID_LEN ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int SMP_REQUEST ;
 int SMP_RESPONSE ;
 int SMP_RESP_FUNC_ACC ;
 int SMP_RESP_FUNC_UNK ;
 int SMP_RESP_INV_FRM_LEN ;

 int bio_offset (int ) ;
 int bio_page (int ) ;
 int const blk_rq_bytes (struct request*) ;
 int flush_kernel_dcache_page (int ) ;
 int kfree (int*) ;
 int* kmap_atomic (int ,int ) ;
 int kunmap_atomic (int*,int ) ;
 int* kzalloc (int const,int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int const max (int const,unsigned int) ;
 int memcpy (int*,...) ;
 int sas_host_smp_discover (struct sas_ha_struct*,int*,int) ;
 int sas_host_smp_write_gpio (struct sas_ha_struct*,int*,int,int,int,int*) ;
 int sas_phy_control (struct sas_ha_struct*,int,int,int,int,int*) ;
 int sas_report_phy_sata (struct sas_ha_struct*,int*,int) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;

int sas_smp_host_handler(struct Scsi_Host *shost, struct request *req,
    struct request *rsp)
{
 u8 *req_data = ((void*)0), *resp_data = ((void*)0), *buf;
 struct sas_ha_struct *sas_ha = SHOST_TO_SAS_HA(shost);
 int error = -EINVAL;


 if (blk_rq_bytes(req) < 8 || blk_rq_bytes(rsp) < 8)
  goto out;

 if (bio_offset(req->bio) + blk_rq_bytes(req) > PAGE_SIZE ||
     bio_offset(rsp->bio) + blk_rq_bytes(rsp) > PAGE_SIZE) {
  shost_printk(KERN_ERR, shost,
   "SMP request/response frame crosses page boundary");
  goto out;
 }

 req_data = kzalloc(blk_rq_bytes(req), GFP_KERNEL);



 resp_data = kzalloc(max(blk_rq_bytes(rsp), 128U), GFP_KERNEL);

 if (!req_data || !resp_data) {
  error = -ENOMEM;
  goto out;
 }

 local_irq_disable();
 buf = kmap_atomic(bio_page(req->bio), KM_USER0) + bio_offset(req->bio);
 memcpy(req_data, buf, blk_rq_bytes(req));
 kunmap_atomic(buf - bio_offset(req->bio), KM_USER0);
 local_irq_enable();

 if (req_data[0] != SMP_REQUEST)
  goto out;



 error = 0;


 resp_data[0] = SMP_RESPONSE;
 resp_data[1] = req_data[1];
 resp_data[2] = SMP_RESP_FUNC_UNK;

 switch (req_data[1]) {
 case 133:
  req->resid_len -= 8;
  rsp->resid_len -= 32;
  resp_data[2] = SMP_RESP_FUNC_ACC;
  resp_data[9] = sas_ha->num_phys;
  break;

 case 132:
  req->resid_len -= 8;
  rsp->resid_len -= 64;
  resp_data[2] = SMP_RESP_FUNC_ACC;
  memcpy(resp_data + 12, shost->hostt->name,
         SAS_EXPANDER_VENDOR_ID_LEN);
  memcpy(resp_data + 20, "libsas virt phy",
         SAS_EXPANDER_PRODUCT_ID_LEN);
  break;

 case 134:

  break;

 case 137:
  req->resid_len -= 16;
  if ((int)req->resid_len < 0) {
   req->resid_len = 0;
   error = -EINVAL;
   goto out;
  }
  rsp->resid_len -= 56;
  sas_host_smp_discover(sas_ha, resp_data, req_data[9]);
  break;

 case 131:


  break;

 case 130:
  req->resid_len -= 16;
  if ((int)req->resid_len < 0) {
   req->resid_len = 0;
   error = -EINVAL;
   goto out;
  }
  rsp->resid_len -= 60;
  sas_report_phy_sata(sas_ha, resp_data, req_data[9]);
  break;

 case 129:

  break;

 case 128: {

  const int base_frame_size = 11;
  int to_write = req_data[4];

  if (blk_rq_bytes(req) < base_frame_size + to_write * 4 ||
      req->resid_len < base_frame_size + to_write * 4) {
   resp_data[2] = SMP_RESP_INV_FRM_LEN;
   break;
  }

  to_write = sas_host_smp_write_gpio(sas_ha, resp_data, req_data[2],
         req_data[3], to_write, &req_data[8]);
  req->resid_len -= base_frame_size + to_write * 4;
  rsp->resid_len -= 8;
  break;
 }

 case 138:

  break;

 case 136:
  req->resid_len -= 44;
  if ((int)req->resid_len < 0) {
   req->resid_len = 0;
   error = -EINVAL;
   goto out;
  }
  rsp->resid_len -= 8;
  sas_phy_control(sas_ha, req_data[9], req_data[10],
    req_data[32] >> 4, req_data[33] >> 4,
    resp_data);
  break;

 case 135:

  break;

 default:

  break;
 }

 local_irq_disable();
 buf = kmap_atomic(bio_page(rsp->bio), KM_USER0) + bio_offset(rsp->bio);
 memcpy(buf, resp_data, blk_rq_bytes(rsp));
 flush_kernel_dcache_page(bio_page(rsp->bio));
 kunmap_atomic(buf - bio_offset(rsp->bio), KM_USER0);
 local_irq_enable();

 out:
 kfree(req_data);
 kfree(resp_data);
 return error;
}
