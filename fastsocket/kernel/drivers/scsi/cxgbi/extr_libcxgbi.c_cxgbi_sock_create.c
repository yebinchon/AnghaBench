
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {scalar_t__ flags; struct cxgbi_device* cdev; int callback_lock; int retry_timer; int write_queue; int receive_queue; int refcnt; int lock; } ;
struct cxgbi_device {scalar_t__ (* csk_alloc_cpls ) (struct cxgbi_sock*) ;} ;


 int CTP_CLOSED ;
 int CXGBI_DBG_SOCK ;
 int GFP_NOIO ;
 int cxgbi_sock_set_state (struct cxgbi_sock*,int ) ;
 int kfree (struct cxgbi_sock*) ;
 int kref_init (int *) ;
 struct cxgbi_sock* kzalloc (int,int ) ;
 int log_debug (int,char*,struct cxgbi_device*,struct cxgbi_sock*) ;
 int pr_info (char*,...) ;
 int rwlock_init (int *) ;
 int setup_timer (int *,int *,unsigned long) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ stub1 (struct cxgbi_sock*) ;

__attribute__((used)) static struct cxgbi_sock *cxgbi_sock_create(struct cxgbi_device *cdev)
{
 struct cxgbi_sock *csk = kzalloc(sizeof(*csk), GFP_NOIO);

 if (!csk) {
  pr_info("alloc csk %zu failed.\n", sizeof(*csk));
  return ((void*)0);
 }

 if (cdev->csk_alloc_cpls(csk) < 0) {
  pr_info("csk 0x%p, alloc cpls failed.\n", csk);
  kfree(csk);
  return ((void*)0);
 }

 spin_lock_init(&csk->lock);
 kref_init(&csk->refcnt);
 skb_queue_head_init(&csk->receive_queue);
 skb_queue_head_init(&csk->write_queue);
 setup_timer(&csk->retry_timer, ((void*)0), (unsigned long)csk);
 rwlock_init(&csk->callback_lock);
 csk->cdev = cdev;
 csk->flags = 0;
 cxgbi_sock_set_state(csk, CTP_CLOSED);

 log_debug(1 << CXGBI_DBG_SOCK, "cdev 0x%p, new csk 0x%p.\n", cdev, csk);

 return csk;
}
