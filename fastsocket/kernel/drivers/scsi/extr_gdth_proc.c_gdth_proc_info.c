
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int gdth_ha_str ;


 int TRACE2 (char*) ;
 int gdth_get_info (char*,char**,scalar_t__,int,struct Scsi_Host*,int *) ;
 int gdth_set_info (char*,int,struct Scsi_Host*,int *) ;
 int * shost_priv (struct Scsi_Host*) ;

int gdth_proc_info(struct Scsi_Host *host, char *buffer,char **start,off_t offset,int length,
                   int inout)
{
    gdth_ha_str *ha = shost_priv(host);

    TRACE2(("gdth_proc_info() length %d offs %d inout %d\n",
            length,(int)offset,inout));

    if (inout)
        return(gdth_set_info(buffer,length,host,ha));
    else
        return(gdth_get_info(buffer,start,offset,length,host,ha));
}
