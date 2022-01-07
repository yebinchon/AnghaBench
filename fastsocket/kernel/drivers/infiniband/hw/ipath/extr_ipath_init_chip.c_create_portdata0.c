
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_portdata {int port_cnt; int port_seq_cnt; int * port_pkeys; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int dummy; } ;


 int GFP_KERNEL ;
 int IPATH_DEFAULT_P_KEY ;
 struct ipath_portdata* kzalloc (int,int ) ;

__attribute__((used)) static struct ipath_portdata *create_portdata0(struct ipath_devdata *dd)
{
 struct ipath_portdata *pd = ((void*)0);

 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (pd) {
  pd->port_dd = dd;
  pd->port_cnt = 1;

  pd->port_pkeys[0] = IPATH_DEFAULT_P_KEY;
  pd->port_seq_cnt = 1;
 }
 return pd;
}
