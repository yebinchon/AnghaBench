
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_dynmem_device {int dummy; } ;
struct dm_info_msg {scalar_t__ info; } ;
struct dm_info_header {int type; int data_size; } ;



 int pr_info (char*,...) ;

__attribute__((used)) static void process_info(struct hv_dynmem_device *dm, struct dm_info_msg *msg)
{
 struct dm_info_header *info_hdr;

 info_hdr = (struct dm_info_header *)msg->info;

 switch (info_hdr->type) {
 case 128:
  pr_info("Received INFO_TYPE_MAX_PAGE_CNT\n");
  pr_info("Data Size is %d\n", info_hdr->data_size);
  break;
 default:
  pr_info("Received Unknown type: %d\n", info_hdr->type);
 }
}
