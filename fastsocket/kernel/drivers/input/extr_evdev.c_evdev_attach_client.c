
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {int node; } ;
struct evdev {int client_lock; int client_list; } ;


 int list_add_tail_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void evdev_attach_client(struct evdev *evdev,
    struct evdev_client *client)
{
 spin_lock(&evdev->client_lock);
 list_add_tail_rcu(&client->node, &evdev->client_list);
 spin_unlock(&evdev->client_lock);
 synchronize_rcu();
}
