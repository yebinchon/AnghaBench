
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpar_connection {int statemachine_wq; } ;


 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static inline void veth_kick_statemachine(struct veth_lpar_connection *cnx)
{
 schedule_delayed_work(&cnx->statemachine_wq, 0);
}
