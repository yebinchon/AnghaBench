
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scb {int io_ctx; } ;


 int ahc_cmd_set_transaction_status (int ,int ) ;

__attribute__((used)) static inline
void ahc_set_transaction_status(struct scb *scb, uint32_t status)
{
 ahc_cmd_set_transaction_status(scb->io_ctx,status);
}
