
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_resource {int (* release ) (struct client*,struct client_resource*) ;} ;
struct client {int dummy; } ;


 int client_put (struct client*) ;
 int stub1 (struct client*,struct client_resource*) ;

__attribute__((used)) static int shutdown_resource(int id, void *p, void *data)
{
 struct client_resource *r = p;
 struct client *client = data;

 r->release(client, r);
 client_put(client);

 return 0;
}
