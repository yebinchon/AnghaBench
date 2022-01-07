
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {scalar_t__ src_port; struct cnic_dev* dev; } ;
struct cnic_local {int csk_port_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int be16_to_cpu (scalar_t__) ;
 int cnic_free_id (int *,int ) ;

__attribute__((used)) static void cnic_cm_cleanup(struct cnic_sock *csk)
{
 if (csk->src_port) {
  struct cnic_dev *dev = csk->dev;
  struct cnic_local *cp = dev->cnic_priv;

  cnic_free_id(&cp->csk_port_tbl, be16_to_cpu(csk->src_port));
  csk->src_port = 0;
 }
}
