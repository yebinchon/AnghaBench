
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_request {int list; struct file_info* file_info; } ;
struct file_info {int wait_complete; int req_complete; } ;


 int list_move_tail (int *,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void __queue_complete_req(struct pending_request *req)
{
 struct file_info *fi = req->file_info;

 list_move_tail(&req->list, &fi->req_complete);
  wake_up(&fi->wait_complete);
}
