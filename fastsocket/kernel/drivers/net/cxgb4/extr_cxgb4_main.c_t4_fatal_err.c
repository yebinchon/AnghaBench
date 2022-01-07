
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pdev_dev; } ;


 int GLOBALENABLE ;
 int SGE_CONTROL ;
 int dev_alert (int ,char*) ;
 int t4_intr_disable (struct adapter*) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int ) ;

void t4_fatal_err(struct adapter *adap)
{
 t4_set_reg_field(adap, SGE_CONTROL, GLOBALENABLE, 0);
 t4_intr_disable(adap);
 dev_alert(adap->pdev_dev, "encountered fatal error, adapter stopped\n");
}
