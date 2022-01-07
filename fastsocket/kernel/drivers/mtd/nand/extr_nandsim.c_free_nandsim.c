
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int byte; } ;
struct nandsim {TYPE_1__ buf; } ;


 int free_device (struct nandsim*) ;
 int kfree (int ) ;

__attribute__((used)) static void free_nandsim(struct nandsim *ns)
{
 kfree(ns->buf.byte);
 free_device(ns);

 return;
}
