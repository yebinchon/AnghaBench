
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev_client {int node; } ;
struct mousedev {int client_lock; } ;


 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void mousedev_detach_client(struct mousedev *mousedev,
       struct mousedev_client *client)
{
 spin_lock(&mousedev->client_lock);
 list_del_rcu(&client->node);
 spin_unlock(&mousedev->client_lock);
 synchronize_rcu();
}
