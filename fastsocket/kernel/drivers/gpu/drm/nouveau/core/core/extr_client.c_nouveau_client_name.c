
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_client {char* name; } ;


 struct nouveau_client* nouveau_client (void*) ;

const char *
nouveau_client_name(void *obj)
{
 const char *client_name = "unknown";
 struct nouveau_client *client = nouveau_client(obj);
 if (client)
  client_name = client->name;
 return client_name;
}
