
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct scb {int io_ctx; } ;


 int scsi_get_resid (int ) ;

__attribute__((used)) static inline
u_long ahc_get_residual(struct scb *scb)
{
 return scsi_get_resid(scb->io_ctx);
}
