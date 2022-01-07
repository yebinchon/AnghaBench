
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_sock {int dummy; } ;
struct cnic_local {int csk_port_tbl; int csk_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int CNIC_LOCAL_PORT_MIN ;
 int CNIC_LOCAL_PORT_RANGE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_CM_SK_TBL_SZ ;
 int cnic_cm_free_mem (struct cnic_dev*) ;
 scalar_t__ cnic_init_id_tbl (int *,int ,int ,int ) ;
 int kzalloc (int,int ) ;
 int random32 () ;

__attribute__((used)) static int cnic_cm_alloc_mem(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 u32 port_id;

 cp->csk_tbl = kzalloc(sizeof(struct cnic_sock) * MAX_CM_SK_TBL_SZ,
         GFP_KERNEL);
 if (!cp->csk_tbl)
  return -ENOMEM;

 port_id = random32();
 port_id %= CNIC_LOCAL_PORT_RANGE;
 if (cnic_init_id_tbl(&cp->csk_port_tbl, CNIC_LOCAL_PORT_RANGE,
        CNIC_LOCAL_PORT_MIN, port_id)) {
  cnic_cm_free_mem(dev);
  return -ENOMEM;
 }
 return 0;
}
