
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_notifier_client {int add; int node_name; int remove; } ;
struct mdesc_handle {int dummy; } ;


 int invoke_on_missing (int ,struct mdesc_handle*,struct mdesc_handle*,int ) ;

__attribute__((used)) static void notify_one(struct mdesc_notifier_client *p,
         struct mdesc_handle *old_hp,
         struct mdesc_handle *new_hp)
{
 invoke_on_missing(p->node_name, old_hp, new_hp, p->remove);
 invoke_on_missing(p->node_name, new_hp, old_hp, p->add);
}
