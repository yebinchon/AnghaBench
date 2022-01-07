
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipath_portdata {int port_pkeys; } ;
struct ipath_devdata {struct ipath_portdata** ipath_pd; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static int get_pkeys(struct ipath_devdata *dd, u16 * pkeys)
{

 struct ipath_portdata *pd = dd->ipath_pd[0];

 memcpy(pkeys, pd->port_pkeys, sizeof(pd->port_pkeys));

 return 0;
}
