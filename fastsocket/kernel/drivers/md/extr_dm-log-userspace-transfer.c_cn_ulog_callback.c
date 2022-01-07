
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_skb_parms {int eff_cap; } ;
struct dm_ulog_request {int dummy; } ;
struct cn_msg {int len; int seq; } ;


 int CAP_SYS_ADMIN ;
 int DMERR (char*,unsigned int,int,int ) ;
 int cap_raised (int ,int ) ;
 int fill_pkg (struct cn_msg*,struct dm_ulog_request*) ;
 int receiving_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cn_ulog_callback(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
 struct dm_ulog_request *tfr = (struct dm_ulog_request *)(msg + 1);

 if (!cap_raised(nsp->eff_cap, CAP_SYS_ADMIN))
  return;

 spin_lock(&receiving_list_lock);
 if (msg->len == 0)
  fill_pkg(msg, ((void*)0));
 else if (msg->len < sizeof(*tfr))
  DMERR("Incomplete message received (expected %u, got %u): [%u]",
        (unsigned)sizeof(*tfr), msg->len, msg->seq);
 else
  fill_pkg(((void*)0), tfr);
 spin_unlock(&receiving_list_lock);
}
