
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int dprintk (char*,...) ;

__attribute__((used)) static int wd7000_set_info(char *buffer, int length, struct Scsi_Host *host)
{
 dprintk("Buffer = <%.*s>, length = %d\n", length, buffer, length);




 dprintk("Sorry, this function is currently out of order...\n");
 return (length);
}
