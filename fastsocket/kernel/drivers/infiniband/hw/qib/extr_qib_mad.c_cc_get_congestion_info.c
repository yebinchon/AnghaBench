
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_pportdata {int cc_max_table_entries; } ;
struct qib_ibport {int dummy; } ;
struct ib_smp {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cc_mad {scalar_t__ mgmt_data; } ;
struct ib_cc_info_attr {int control_table_cap; scalar_t__ congestion_info; } ;


 int memset (scalar_t__,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int reply (struct ib_smp*) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int cc_get_congestion_info(struct ib_cc_mad *ccp,
    struct ib_device *ibdev, u8 port)
{
 struct ib_cc_info_attr *p =
  (struct ib_cc_info_attr *)ccp->mgmt_data;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);

 memset(ccp->mgmt_data, 0, sizeof(ccp->mgmt_data));

 p->congestion_info = 0;
 p->control_table_cap = ppd->cc_max_table_entries;

 return reply((struct ib_smp *) ccp);
}
