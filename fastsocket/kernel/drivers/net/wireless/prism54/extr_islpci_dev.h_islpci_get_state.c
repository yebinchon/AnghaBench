
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int islpci_state_t ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ islpci_private ;



__attribute__((used)) static inline islpci_state_t
islpci_get_state(islpci_private *priv)
{

 return priv->state;

}
