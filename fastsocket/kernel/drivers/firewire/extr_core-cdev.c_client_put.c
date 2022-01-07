
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int kref; } ;


 int client_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void client_put(struct client *client)
{
 kref_put(&client->kref, client_release);
}
