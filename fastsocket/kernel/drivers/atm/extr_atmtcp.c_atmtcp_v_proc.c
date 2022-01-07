
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmtcp_dev_data {scalar_t__ vcc; int persist; } ;
struct atm_dev {int dummy; } ;
typedef scalar_t__ loff_t ;


 struct atmtcp_dev_data* PRIV (struct atm_dev*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int atmtcp_v_proc(struct atm_dev *dev,loff_t *pos,char *page)
{
 struct atmtcp_dev_data *dev_data = PRIV(dev);

 if (*pos) return 0;
 if (!dev_data->persist) return sprintf(page,"ephemeral\n");
 return sprintf(page,"persistent, %sconnected\n",
     dev_data->vcc ? "" : "dis");
}
