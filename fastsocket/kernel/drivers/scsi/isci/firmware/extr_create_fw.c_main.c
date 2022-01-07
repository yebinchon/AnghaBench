
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_orom {int dummy; } ;


 int free (struct isci_orom*) ;
 struct isci_orom* malloc (int) ;
 int memset (struct isci_orom*,int ,int) ;
 int set_binary_values (struct isci_orom*) ;
 int write_blob (struct isci_orom*) ;

int main(void)
{
 int err;
 struct isci_orom *isci_orom;

 isci_orom = malloc(sizeof(struct isci_orom));
 memset(isci_orom, 0, sizeof(struct isci_orom));

 set_binary_values(isci_orom);

 err = write_blob(isci_orom);
 if (err < 0) {
  free(isci_orom);
  return err;
 }

 free(isci_orom);
 return 0;
}
