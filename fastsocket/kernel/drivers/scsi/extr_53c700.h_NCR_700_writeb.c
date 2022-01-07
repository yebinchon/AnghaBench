
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {scalar_t__ base; } ;
typedef int __u8 ;
typedef int __u32 ;


 int bE ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static inline void
NCR_700_writeb(__u8 value, struct Scsi_Host *host, __u32 reg)
{
 const struct NCR_700_Host_Parameters *hostdata
  = (struct NCR_700_Host_Parameters *)host->hostdata[0];

 iowrite8(value, hostdata->base + (reg^bE));
}
