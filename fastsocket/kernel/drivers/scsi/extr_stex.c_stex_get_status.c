
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_msg {int dummy; } ;
struct st_hba {int status_tail; int sts_count; struct status_msg* status_buffer; } ;



__attribute__((used)) static struct status_msg *stex_get_status(struct st_hba *hba)
{
 struct status_msg *status = hba->status_buffer + hba->status_tail;

 ++hba->status_tail;
 hba->status_tail %= hba->sts_count+1;

 return status;
}
