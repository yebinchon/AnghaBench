
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {struct adapter* adapter; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;
typedef int ssize_t ;


 int A_TP_TM_PIO_ADDR ;
 int A_TP_TM_PIO_DATA ;
 int A_TP_TX_MOD_Q1_Q0_RATE_LIMIT ;
 struct port_info* netdev_priv (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sprintf (char*,char*,...) ;
 unsigned int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t tm_attr_show(struct device *d,
       char *buf, int sched)
{
 struct port_info *pi = netdev_priv(to_net_dev(d));
 struct adapter *adap = pi->adapter;
 unsigned int v, addr, bpt, cpt;
 ssize_t len;

 addr = A_TP_TX_MOD_Q1_Q0_RATE_LIMIT - sched / 2;
 rtnl_lock();
 t3_write_reg(adap, A_TP_TM_PIO_ADDR, addr);
 v = t3_read_reg(adap, A_TP_TM_PIO_DATA);
 if (sched & 1)
  v >>= 16;
 bpt = (v >> 8) & 0xff;
 cpt = v & 0xff;
 if (!cpt)
  len = sprintf(buf, "disabled\n");
 else {
  v = (adap->params.vpd.cclk * 1000) / cpt;
  len = sprintf(buf, "%u Kbps\n", (v * bpt) / 125);
 }
 rtnl_unlock();
 return len;
}
