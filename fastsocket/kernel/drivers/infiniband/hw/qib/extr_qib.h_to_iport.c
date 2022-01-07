
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qib_ibport {int dummy; } ;
struct qib_devdata {unsigned int num_pports; TYPE_1__* pport; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct qib_ibport ibport_data; } ;


 int WARN_ON (int) ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;

__attribute__((used)) static inline struct qib_ibport *to_iport(struct ib_device *ibdev, u8 port)
{
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 unsigned pidx = port - 1;

 WARN_ON(pidx >= dd->num_pports);
 return &dd->pport[pidx].ibport_data;
}
