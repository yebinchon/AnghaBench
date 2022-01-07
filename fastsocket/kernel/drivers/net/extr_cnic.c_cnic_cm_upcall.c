
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cnic_ulp_ops {int (* cm_remote_close ) (struct cnic_sock*) ;int (* cm_abort_complete ) (struct cnic_sock*) ;int (* cm_remote_abort ) (struct cnic_sock*) ;int (* cm_close_complete ) (struct cnic_sock*) ;int (* cm_connect_complete ) (struct cnic_sock*) ;} ;
struct cnic_sock {int ulp_type; } ;
struct cnic_local {int * ulp_ops; } ;


 scalar_t__ L4_KCQE_OPCODE_VALUE_CLOSE_COMP ;
 scalar_t__ L4_KCQE_OPCODE_VALUE_CLOSE_RECEIVED ;
 scalar_t__ L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE ;
 scalar_t__ L4_KCQE_OPCODE_VALUE_RESET_COMP ;
 scalar_t__ L4_KCQE_OPCODE_VALUE_RESET_RECEIVED ;
 struct cnic_ulp_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct cnic_sock*) ;
 int stub2 (struct cnic_sock*) ;
 int stub3 (struct cnic_sock*) ;
 int stub4 (struct cnic_sock*) ;
 int stub5 (struct cnic_sock*) ;

__attribute__((used)) static void cnic_cm_upcall(struct cnic_local *cp, struct cnic_sock *csk,
      u8 opcode)
{
 struct cnic_ulp_ops *ulp_ops;
 int ulp_type = csk->ulp_type;

 rcu_read_lock();
 ulp_ops = rcu_dereference(cp->ulp_ops[ulp_type]);
 if (ulp_ops) {
  if (opcode == L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE)
   ulp_ops->cm_connect_complete(csk);
  else if (opcode == L4_KCQE_OPCODE_VALUE_CLOSE_COMP)
   ulp_ops->cm_close_complete(csk);
  else if (opcode == L4_KCQE_OPCODE_VALUE_RESET_RECEIVED)
   ulp_ops->cm_remote_abort(csk);
  else if (opcode == L4_KCQE_OPCODE_VALUE_RESET_COMP)
   ulp_ops->cm_abort_complete(csk);
  else if (opcode == L4_KCQE_OPCODE_VALUE_CLOSE_RECEIVED)
   ulp_ops->cm_remote_close(csk);
 }
 rcu_read_unlock();
}
