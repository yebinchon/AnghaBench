
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int val; int idx; } ;
struct TYPE_5__ {scalar_t__ sk_socket; } ;


 int cn_add_callback (TYPE_2__*,int ,int ) ;
 int cn_del_callback (TYPE_2__*) ;
 int cn_test_callback ;
 TYPE_2__ cn_test_id ;
 int cn_test_name ;
 int cn_test_timer ;
 int cn_test_timer_func ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 TYPE_1__* nls ;
 int pr_info (char*,int ,int ) ;
 int setup_timer (int *,int ,int ) ;
 int sock_release (scalar_t__) ;

__attribute__((used)) static int cn_test_init(void)
{
 int err;

 err = cn_add_callback(&cn_test_id, cn_test_name, cn_test_callback);
 if (err)
  goto err_out;
 cn_test_id.val++;
 err = cn_add_callback(&cn_test_id, cn_test_name, cn_test_callback);
 if (err) {
  cn_del_callback(&cn_test_id);
  goto err_out;
 }

 setup_timer(&cn_test_timer, cn_test_timer_func, 0);
 mod_timer(&cn_test_timer, jiffies + msecs_to_jiffies(1000));

 pr_info("initialized with id={%u.%u}\n",
  cn_test_id.idx, cn_test_id.val);

 return 0;

      err_out:
 if (nls && nls->sk_socket)
  sock_release(nls->sk_socket);

 return err;
}
