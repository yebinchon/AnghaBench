
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_host {int host_flags; int (* get_lock ) (int ,int *) ;int host_busy; } ;
typedef int ide_hwif_t ;


 int IDE_HFLAG_SERIALIZE ;
 int IDE_HOST_BUSY ;
 int ide_intr ;
 int stub1 (int ,int *) ;
 int test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static inline int ide_lock_host(struct ide_host *host, ide_hwif_t *hwif)
{
 int rc = 0;

 if (host->host_flags & IDE_HFLAG_SERIALIZE) {
  rc = test_and_set_bit_lock(IDE_HOST_BUSY, &host->host_busy);
  if (rc == 0) {
   if (host->get_lock)
    host->get_lock(ide_intr, hwif);
  }
 }
 return rc;
}
