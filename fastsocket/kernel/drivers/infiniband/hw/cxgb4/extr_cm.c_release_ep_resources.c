
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct c4iw_ep {TYPE_1__ com; } ;


 int RELEASE_RESOURCES ;
 int c4iw_put_ep (TYPE_1__*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void release_ep_resources(struct c4iw_ep *ep)
{
 set_bit(RELEASE_RESOURCES, &ep->com.flags);
 c4iw_put_ep(&ep->com);
}
