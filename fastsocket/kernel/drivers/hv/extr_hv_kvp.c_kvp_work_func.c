
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HV_E_FAIL ;
 int kvp_respond_to_host (int *,int ) ;

__attribute__((used)) static void
kvp_work_func(struct work_struct *dummy)
{




 kvp_respond_to_host(((void*)0), HV_E_FAIL);
}
