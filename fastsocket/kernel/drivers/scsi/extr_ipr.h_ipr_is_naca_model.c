
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_resource_entry {scalar_t__ qmodel; } ;


 scalar_t__ IPR_QUEUE_NACA_MODEL ;
 scalar_t__ ipr_is_gscsi (struct ipr_resource_entry*) ;

__attribute__((used)) static inline int ipr_is_naca_model(struct ipr_resource_entry *res)
{
 return ipr_is_gscsi(res) && res->qmodel == IPR_QUEUE_NACA_MODEL;
}
