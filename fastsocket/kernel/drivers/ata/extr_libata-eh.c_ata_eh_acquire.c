
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {int eh_owner; int eh_mutex; } ;


 int WARN_ON_ONCE (int ) ;
 int current ;
 int mutex_lock (int *) ;

void ata_eh_acquire(struct ata_port *ap)
{
 mutex_lock(&ap->host->eh_mutex);
 WARN_ON_ONCE(ap->host->eh_owner);
 ap->host->eh_owner = current;
}
