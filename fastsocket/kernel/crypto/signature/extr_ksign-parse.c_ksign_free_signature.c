
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksign_signature {struct ksign_signature* unhashed_data; struct ksign_signature* hashed_data; int * data; } ;


 int DSA_NSIG ;
 int kfree (struct ksign_signature*) ;
 int mpi_free (int ) ;

void ksign_free_signature(struct ksign_signature *sig)
{
 int i;

 if (sig) {
  for (i = 0; i < DSA_NSIG; i++)
   mpi_free(sig->data[i]);
  kfree(sig->hashed_data);
  kfree(sig->unhashed_data);
  kfree(sig);
 }
}
