
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksign_public_key {int * pkey; } ;


 int DSA_NPKEY ;
 int kfree (struct ksign_public_key*) ;
 int mpi_free (int ) ;

void ksign_free_public_key(struct ksign_public_key *pk)
{
 int i;

 if (pk) {
  for (i = 0; i < DSA_NPKEY; i++)
   mpi_free(pk->pkey[i]);
  kfree(pk);
 }
}
