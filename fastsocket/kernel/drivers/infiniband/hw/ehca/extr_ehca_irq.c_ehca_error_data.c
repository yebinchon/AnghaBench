
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ehca_shca {int ib_device; int ipz_hca_handle; } ;


 int EHCA_BMASK_GET (int ,int ) ;
 int EHCA_PAGESIZE ;
 unsigned long ENOMEM ;
 int ERROR_DATA_LENGTH ;
 int GFP_ATOMIC ;
 unsigned long H_R_STATE ;
 unsigned long H_SUCCESS ;
 int * ehca_alloc_fw_ctrlblock (int ) ;
 int ehca_err (int *,char*,...) ;
 int ehca_free_fw_ctrlblock (int *) ;
 unsigned long hipz_h_error_data (int ,int ,int *,unsigned long*) ;
 int print_error_data (struct ehca_shca*,void*,int *,int) ;

int ehca_error_data(struct ehca_shca *shca, void *data,
      u64 resource)
{

 unsigned long ret;
 u64 *rblock;
 unsigned long block_count;

 rblock = ehca_alloc_fw_ctrlblock(GFP_ATOMIC);
 if (!rblock) {
  ehca_err(&shca->ib_device, "Cannot allocate rblock memory.");
  ret = -ENOMEM;
  goto error_data1;
 }


 ret = hipz_h_error_data(shca->ipz_hca_handle,
    resource,
    rblock,
    &block_count);

 if (ret == H_R_STATE)
  ehca_err(&shca->ib_device,
    "No error data is available: %llx.", resource);
 else if (ret == H_SUCCESS) {
  int length;

  length = EHCA_BMASK_GET(ERROR_DATA_LENGTH, rblock[0]);

  if (length > EHCA_PAGESIZE)
   length = EHCA_PAGESIZE;

  print_error_data(shca, data, rblock, length);
 } else
  ehca_err(&shca->ib_device,
    "Error data could not be fetched: %llx", resource);

 ehca_free_fw_ctrlblock(rblock);

error_data1:
 return ret;

}
