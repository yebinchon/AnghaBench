
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct islpci_mgmtframe {TYPE_1__* header; } ;
struct TYPE_7__ {int ndev; } ;
typedef TYPE_2__ islpci_private ;
typedef enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;
struct TYPE_8__ {int size; int flags; int oid; } ;
struct TYPE_6__ {int operation; } ;


 int BUG_ON (int) ;
 int EIO ;
 int OID_FLAG_TYPE ;
 int OID_NUM_LAST ;
 int PIMFOR_OP_ERROR ;
 int PIMFOR_OP_SET ;
 scalar_t__ PRV_STATE_READY ;
 TYPE_5__* isl_oid ;
 scalar_t__ islpci_get_state (TYPE_2__*) ;
 int islpci_mgt_release (struct islpci_mgmtframe*) ;
 int islpci_mgt_transaction (int ,int ,int ,void*,int,struct islpci_mgmtframe**) ;
 int mgt_cpu_to_le (int,void*) ;
 int mgt_le_to_cpu (int,void*) ;

int
mgt_set_varlen(islpci_private *priv, enum oid_num_t n, void *data, int extra_len)
{
 int ret = 0;
 struct islpci_mgmtframe *response;
 int response_op = PIMFOR_OP_ERROR;
 int dlen;
 u32 oid;

 BUG_ON(OID_NUM_LAST <= n);

 dlen = isl_oid[n].size;
 oid = isl_oid[n].oid;

 mgt_cpu_to_le(isl_oid[n].flags & OID_FLAG_TYPE, data);

 if (islpci_get_state(priv) >= PRV_STATE_READY) {
  ret = islpci_mgt_transaction(priv->ndev, PIMFOR_OP_SET, oid,
          data, dlen + extra_len, &response);
  if (!ret) {
   response_op = response->header->operation;
   islpci_mgt_release(response);
  }
  if (ret || response_op == PIMFOR_OP_ERROR)
   ret = -EIO;
 } else
  ret = -EIO;


 if (data)
  mgt_le_to_cpu(isl_oid[n].flags & OID_FLAG_TYPE, data);

 return ret;
}
