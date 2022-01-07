
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_uid {int serial; int vendor; } ;
struct TYPE_2__ {int serial; int vendor; } ;
struct alias_server {int lculist; int server; TYPE_1__ uid; } ;


 int ENOMEM ;
 struct alias_server* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct alias_server* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static struct alias_server *_allocate_server(struct dasd_uid *uid)
{
 struct alias_server *server;

 server = kzalloc(sizeof(*server), GFP_KERNEL);
 if (!server)
  return ERR_PTR(-ENOMEM);
 memcpy(server->uid.vendor, uid->vendor, sizeof(uid->vendor));
 memcpy(server->uid.serial, uid->serial, sizeof(uid->serial));
 INIT_LIST_HEAD(&server->server);
 INIT_LIST_HEAD(&server->lculist);
 return server;
}
