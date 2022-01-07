
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_vq_req {int reply_ready; int wait_object; } ;
struct c2_dev {int dummy; } ;


 int ETIMEDOUT ;
 int HZ ;
 int atomic_read (int *) ;
 int wait_event_timeout (int ,int ,int) ;

int vq_wait_for_reply(struct c2_dev *c2dev, struct c2_vq_req *req)
{
 if (!wait_event_timeout(req->wait_object,
    atomic_read(&req->reply_ready),
    60*HZ))
  return -ETIMEDOUT;

 return 0;
}
