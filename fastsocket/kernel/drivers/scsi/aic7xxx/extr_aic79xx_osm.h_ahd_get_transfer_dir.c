
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scb {TYPE_1__* io_ctx; } ;
struct TYPE_2__ {int sc_data_direction; } ;



__attribute__((used)) static inline
int ahd_get_transfer_dir(struct scb *scb)
{
 return (scb->io_ctx->sc_data_direction);
}
