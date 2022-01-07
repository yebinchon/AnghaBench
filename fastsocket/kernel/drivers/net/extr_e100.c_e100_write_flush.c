
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nic {TYPE_2__* csr; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int ioread8 (int *) ;

__attribute__((used)) static inline void e100_write_flush(struct nic *nic)
{


 (void)ioread8(&nic->csr->scb.status);
}
