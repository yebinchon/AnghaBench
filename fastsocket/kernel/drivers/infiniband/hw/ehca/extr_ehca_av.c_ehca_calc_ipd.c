
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_port_attr {int active_speed; int active_width; } ;
struct ehca_shca {int ib_device; } ;
typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;


 int EINVAL ;
 int IB_RATE_PORT_CURRENT ;
 int ehca_err (int *,char*,int) ;
 int ehca_query_port (int *,int,struct ib_port_attr*) ;
 int ib_rate_to_mult (int) ;
 int ib_width_enum_to_int (int ) ;
 scalar_t__ unlikely (int) ;

int ehca_calc_ipd(struct ehca_shca *shca, int port,
    enum ib_rate path_rate, u32 *ipd)
{
 int path = ib_rate_to_mult(path_rate);
 int link, ret;
 struct ib_port_attr pa;

 if (path_rate == IB_RATE_PORT_CURRENT) {
  *ipd = 0;
  return 0;
 }

 if (unlikely(path < 0)) {
  ehca_err(&shca->ib_device, "Invalid static rate! path_rate=%x",
    path_rate);
  return -EINVAL;
 }

 ret = ehca_query_port(&shca->ib_device, port, &pa);
 if (unlikely(ret < 0)) {
  ehca_err(&shca->ib_device, "Failed to query port  ret=%i", ret);
  return ret;
 }

 link = ib_width_enum_to_int(pa.active_width) * pa.active_speed;

 if (path >= link)

  *ipd = 0;
 else

  *ipd = ((link + (path >> 1)) / path) - 1;

 return 0;
}
