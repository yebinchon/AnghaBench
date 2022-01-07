
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cisco_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ hdlc_device ;



__attribute__((used)) static inline struct cisco_state* state(hdlc_device *hdlc)
{
 return (struct cisco_state *)hdlc->state;
}
