
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct scb {int io_ctx; } ;


 int scsi_set_resid (int ,int ) ;

__attribute__((used)) static inline
void ahd_set_residual(struct scb *scb, u_long resid)
{
 scsi_set_resid(scb->io_ctx, resid);
}
