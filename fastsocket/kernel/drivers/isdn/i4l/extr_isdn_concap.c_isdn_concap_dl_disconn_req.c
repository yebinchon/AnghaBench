
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct concap_proto {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int name; } ;


 int IX25DEBUG (char*,int ) ;
 int isdn_net_hangup (TYPE_1__*) ;

__attribute__((used)) static int isdn_concap_dl_disconn_req(struct concap_proto *concap)
{
 IX25DEBUG( "isdn_concap_dl_disconn_req: %s \n", concap -> net_dev -> name);

 isdn_net_hangup( concap -> net_dev );
 return 0;
}
