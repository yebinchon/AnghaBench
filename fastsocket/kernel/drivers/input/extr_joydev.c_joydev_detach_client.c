
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev_client {int node; } ;
struct joydev {int client_lock; } ;


 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void joydev_detach_client(struct joydev *joydev,
     struct joydev_client *client)
{
 spin_lock(&joydev->client_lock);
 list_del_rcu(&client->node);
 spin_unlock(&joydev->client_lock);
 synchronize_rcu();
}
