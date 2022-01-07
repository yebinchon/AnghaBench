
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cnic_sockaddr {int dummy; } ;
struct cnic_sock {int flags; TYPE_1__* dev; } ;
struct cnic_local {TYPE_2__* ethdev; } ;
struct TYPE_4__ {int drv_state; } ;
struct TYPE_3__ {struct cnic_local* cnic_priv; } ;


 int CNIC_DRV_STATE_NO_ISCSI ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int SK_F_CONNECT_START ;
 int clear_bit (int ,int *) ;
 int cnic_get_route (struct cnic_sock*,struct cnic_sockaddr*) ;
 int cnic_in_use (struct cnic_sock*) ;
 int cnic_init_csk_state (struct cnic_sock*) ;
 int cnic_resolve_addr (struct cnic_sock*,struct cnic_sockaddr*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int cnic_cm_connect(struct cnic_sock *csk, struct cnic_sockaddr *saddr)
{
 struct cnic_local *cp = csk->dev->cnic_priv;
 int err = 0;

 if (cp->ethdev->drv_state & CNIC_DRV_STATE_NO_ISCSI)
  return -EOPNOTSUPP;

 if (!cnic_in_use(csk))
  return -EINVAL;

 if (test_and_set_bit(SK_F_CONNECT_START, &csk->flags))
  return -EINVAL;

 cnic_init_csk_state(csk);

 err = cnic_get_route(csk, saddr);
 if (err)
  goto err_out;

 err = cnic_resolve_addr(csk, saddr);
 if (!err)
  return 0;

err_out:
 clear_bit(SK_F_CONNECT_START, &csk->flags);
 return err;
}
