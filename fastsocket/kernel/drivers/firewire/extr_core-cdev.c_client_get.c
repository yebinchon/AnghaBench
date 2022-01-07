
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void client_get(struct client *client)
{
 kref_get(&client->kref);
}
