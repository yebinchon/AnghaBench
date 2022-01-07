
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int dummy; } ;


 int EINVAL ;


 int krp_highprio_0 ;
 int krp_lowprio_0 ;
 int set_vl_weights (struct qib_pportdata*,int ,void*) ;

__attribute__((used)) static int qib_7322_set_ib_table(struct qib_pportdata *ppd, int which, void *t)
{
 switch (which) {
 case 129:
  set_vl_weights(ppd, krp_highprio_0, t);
  break;

 case 128:
  set_vl_weights(ppd, krp_lowprio_0, t);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
