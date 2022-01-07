
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias_server {int dummy; } ;


 int kfree (struct alias_server*) ;

__attribute__((used)) static void _free_server(struct alias_server *server)
{
 kfree(server);
}
