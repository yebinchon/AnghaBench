
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cnic_ulp_ops {int (* indicate_netevent ) (void*,unsigned long,int ) ;} ;
struct cnic_local {void** ulp_handle; int * ulp_ops; } ;


 int MAX_CNIC_ULP_TYPE ;
 struct cnic_ulp_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (void*,unsigned long,int ) ;

__attribute__((used)) static void cnic_rcv_netevent(struct cnic_local *cp, unsigned long event,
         u16 vlan_id)
{
 int if_type;

 rcu_read_lock();
 for (if_type = 0; if_type < MAX_CNIC_ULP_TYPE; if_type++) {
  struct cnic_ulp_ops *ulp_ops;
  void *ctx;

  ulp_ops = rcu_dereference(cp->ulp_ops[if_type]);
  if (!ulp_ops || !ulp_ops->indicate_netevent)
   continue;

  ctx = cp->ulp_handle[if_type];

  ulp_ops->indicate_netevent(ctx, event, vlan_id);
 }
 rcu_read_unlock();
}
