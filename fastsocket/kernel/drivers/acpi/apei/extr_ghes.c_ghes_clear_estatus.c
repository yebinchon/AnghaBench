
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ghes {int flags; int buffer_paddr; TYPE_1__* estatus; } ;
struct TYPE_2__ {scalar_t__ block_status; } ;


 int GHES_TO_CLEAR ;
 int ghes_copy_tofrom_phys (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void ghes_clear_estatus(struct ghes *ghes)
{
 ghes->estatus->block_status = 0;
 if (!(ghes->flags & GHES_TO_CLEAR))
  return;
 ghes_copy_tofrom_phys(ghes->estatus, ghes->buffer_paddr,
         sizeof(ghes->estatus->block_status), 0);
 ghes->flags &= ~GHES_TO_CLEAR;
}
