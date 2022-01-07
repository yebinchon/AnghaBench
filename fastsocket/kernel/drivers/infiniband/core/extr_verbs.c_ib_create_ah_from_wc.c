
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_wc {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_grh {int dummy; } ;
struct ib_ah_attr {int dummy; } ;
struct ib_ah {int dummy; } ;


 struct ib_ah* ERR_PTR (int) ;
 struct ib_ah* ib_create_ah (struct ib_pd*,struct ib_ah_attr*) ;
 int ib_init_ah_from_wc (int ,int ,struct ib_wc*,struct ib_grh*,struct ib_ah_attr*) ;

struct ib_ah *ib_create_ah_from_wc(struct ib_pd *pd, struct ib_wc *wc,
       struct ib_grh *grh, u8 port_num)
{
 struct ib_ah_attr ah_attr;
 int ret;

 ret = ib_init_ah_from_wc(pd->device, port_num, wc, grh, &ah_attr);
 if (ret)
  return ERR_PTR(ret);

 return ib_create_ah(pd, &ah_attr);
}
