
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE ;
 int LOG_PAGE_SUPPORTED_LOG_PAGES_LENGTH ;
 int LOG_PAGE_SUPPORTED_LOG_PAGES_PAGE ;
 int LOG_PAGE_TEMPERATURE_PAGE ;
 int SNTI_TRANSLATION_SUCCESS ;
 int SUPPORTED_LOG_PAGES_PAGE_LENGTH ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int min (int,int ) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int *,int) ;

__attribute__((used)) static int nvme_trans_log_supp_pages(struct nvme_ns *ns, struct sg_io_hdr *hdr,
     int alloc_len)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int xfer_len;
 u8 *log_response;

 log_response = kzalloc(LOG_PAGE_SUPPORTED_LOG_PAGES_LENGTH, GFP_KERNEL);
 if (log_response == ((void*)0)) {
  res = -ENOMEM;
  goto out_mem;
 }

 log_response[0] = LOG_PAGE_SUPPORTED_LOG_PAGES_PAGE;

 log_response[3] = SUPPORTED_LOG_PAGES_PAGE_LENGTH;
 log_response[4] = LOG_PAGE_SUPPORTED_LOG_PAGES_PAGE;
 log_response[5] = LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE;
 log_response[6] = LOG_PAGE_TEMPERATURE_PAGE;

 xfer_len = min(alloc_len, LOG_PAGE_SUPPORTED_LOG_PAGES_LENGTH);
 res = nvme_trans_copy_to_user(hdr, log_response, xfer_len);

 kfree(log_response);
 out_mem:
 return res;
}
