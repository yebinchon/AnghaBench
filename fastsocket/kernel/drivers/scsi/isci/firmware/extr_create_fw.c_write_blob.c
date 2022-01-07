
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_orom {int dummy; } ;
typedef int FILE ;


 int EIO ;
 int blob_name ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 size_t fwrite (struct isci_orom*,int,int,int *) ;
 int perror (char*) ;

int write_blob(struct isci_orom *isci_orom)
{
 FILE *fd;
 int err;
 size_t count;

 fd = fopen(blob_name, "w+");
 if (!fd) {
  perror("Open file for write failed");
  fclose(fd);
  return -EIO;
 }

 count = fwrite(isci_orom, sizeof(struct isci_orom), 1, fd);
 if (count != 1) {
  perror("Write data failed");
  fclose(fd);
  return -EIO;
 }

 fclose(fd);

 return 0;
}
