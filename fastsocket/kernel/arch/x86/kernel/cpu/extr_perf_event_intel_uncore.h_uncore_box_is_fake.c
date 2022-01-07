
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {scalar_t__ phys_id; } ;



__attribute__((used)) static inline bool uncore_box_is_fake(struct intel_uncore_box *box)
{
 return (box->phys_id < 0);
}
