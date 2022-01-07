
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {TYPE_1__* hostt; } ;
typedef int off_t ;
struct TYPE_2__ {int (* proc_info ) (struct Scsi_Host*,char*,char**,int ,int,int ) ;} ;


 int stub1 (struct Scsi_Host*,char*,char**,int ,int,int ) ;

__attribute__((used)) static int proc_scsi_read(char *buffer, char **start, off_t offset,
     int length, int *eof, void *data)
{
 struct Scsi_Host *shost = data;
 int n;

 n = shost->hostt->proc_info(shost, buffer, start, offset, length, 0);
 *eof = (n < length);

 return n;
}
