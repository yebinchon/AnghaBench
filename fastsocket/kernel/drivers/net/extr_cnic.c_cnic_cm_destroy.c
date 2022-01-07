
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {scalar_t__ flags; int ref_count; } ;


 int EINVAL ;
 int SK_F_INUSE ;
 int atomic_read (int *) ;
 int clear_bit (int ,scalar_t__*) ;
 int cnic_cm_cleanup (struct cnic_sock*) ;
 int cnic_in_use (struct cnic_sock*) ;
 int csk_hold (struct cnic_sock*) ;
 int csk_put (struct cnic_sock*) ;
 int msleep (int) ;
 int smp_mb__after_clear_bit () ;

__attribute__((used)) static int cnic_cm_destroy(struct cnic_sock *csk)
{
 if (!cnic_in_use(csk))
  return -EINVAL;

 csk_hold(csk);
 clear_bit(SK_F_INUSE, &csk->flags);
 smp_mb__after_clear_bit();
 while (atomic_read(&csk->ref_count) != 1)
  msleep(1);
 cnic_cm_cleanup(csk);

 csk->flags = 0;
 csk_put(csk);
 return 0;
}
