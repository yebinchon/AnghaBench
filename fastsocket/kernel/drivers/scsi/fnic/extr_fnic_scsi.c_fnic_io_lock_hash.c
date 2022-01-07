
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct fnic {int * io_req_lock; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int tag; } ;


 int FNIC_IO_LOCKS ;

__attribute__((used)) static inline spinlock_t *fnic_io_lock_hash(struct fnic *fnic,
         struct scsi_cmnd *sc)
{
 u32 hash = sc->request->tag & (FNIC_IO_LOCKS - 1);

 return &fnic->io_req_lock[hash];
}
