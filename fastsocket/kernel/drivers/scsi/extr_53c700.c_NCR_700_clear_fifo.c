
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {scalar_t__ chip710; } ;


 int CLR_FIFO ;
 int CLR_FIFO_710 ;
 int CTEST8_REG ;
 int DFIFO_REG ;
 int NCR_700_writeb (int ,struct Scsi_Host*,int ) ;

__attribute__((used)) static inline void
NCR_700_clear_fifo(struct Scsi_Host *host) {
 const struct NCR_700_Host_Parameters *hostdata
  = (struct NCR_700_Host_Parameters *)host->hostdata[0];
 if(hostdata->chip710) {
  NCR_700_writeb(CLR_FIFO_710, host, CTEST8_REG);
 } else {
  NCR_700_writeb(CLR_FIFO, host, DFIFO_REG);
 }
}
