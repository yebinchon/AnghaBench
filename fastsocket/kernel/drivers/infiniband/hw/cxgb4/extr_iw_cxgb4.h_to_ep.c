
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {struct c4iw_ep* provider_data; } ;
struct c4iw_ep {int dummy; } ;



__attribute__((used)) static inline struct c4iw_ep *to_ep(struct iw_cm_id *cm_id)
{
 return cm_id->provider_data;
}
