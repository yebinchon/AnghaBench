
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ulp_ops {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void ulp_get(struct cnic_ulp_ops *ulp_ops)
{
 atomic_inc(&ulp_ops->ref_count);
}
