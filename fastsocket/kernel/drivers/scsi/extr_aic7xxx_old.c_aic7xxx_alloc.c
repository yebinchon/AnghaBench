
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_host_template {int dummy; } ;
struct aic7xxx_host {int host_no; int base; TYPE_1__* scb_data; struct Scsi_Host* host; } ;
struct Scsi_Host {int host_no; scalar_t__ hostdata; } ;
typedef int scb_data_type ;
struct TYPE_2__ {int free_scbs; } ;


 int GFP_ATOMIC ;
 scalar_t__ MAXREG ;
 scalar_t__ MINREG ;
 TYPE_1__* kzalloc (int,int ) ;
 int memset (struct aic7xxx_host*,int ,int) ;
 int release_region (int ,scalar_t__) ;
 int scbq_init (int *) ;
 struct Scsi_Host* scsi_register (struct scsi_host_template*,int) ;
 int scsi_unregister (struct Scsi_Host*) ;

__attribute__((used)) static struct aic7xxx_host *
aic7xxx_alloc(struct scsi_host_template *sht, struct aic7xxx_host *temp)
{
  struct aic7xxx_host *p = ((void*)0);
  struct Scsi_Host *host;





  host = scsi_register(sht, sizeof(struct aic7xxx_host));

  if (host != ((void*)0))
  {
    p = (struct aic7xxx_host *) host->hostdata;
    memset(p, 0, sizeof(struct aic7xxx_host));
    *p = *temp;
    p->host = host;

    p->scb_data = kzalloc(sizeof(scb_data_type), GFP_ATOMIC);
    if (p->scb_data)
    {
      scbq_init (&p->scb_data->free_scbs);
    }
    else
    {




      release_region(p->base, MAXREG - MINREG);
      scsi_unregister(host);
      return(((void*)0));
    }
    p->host_no = host->host_no;
  }
  return (p);
}
