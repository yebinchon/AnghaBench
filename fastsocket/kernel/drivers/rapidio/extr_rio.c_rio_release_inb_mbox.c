
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_mport {TYPE_1__* inb_msg; } ;
struct TYPE_2__ {int res; } ;


 int release_resource (int ) ;
 int rio_close_inb_mbox (struct rio_mport*,int) ;

int rio_release_inb_mbox(struct rio_mport *mport, int mbox)
{
 rio_close_inb_mbox(mport, mbox);


 return release_resource(mport->inb_msg[mbox].res);
}
