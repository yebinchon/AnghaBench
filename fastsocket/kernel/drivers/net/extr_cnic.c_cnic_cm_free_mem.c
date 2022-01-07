
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int csk_port_tbl; int * csk_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int cnic_free_id_tbl (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void cnic_cm_free_mem(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;

 kfree(cp->csk_tbl);
 cp->csk_tbl = ((void*)0);
 cnic_free_id_tbl(&cp->csk_port_tbl);
}
