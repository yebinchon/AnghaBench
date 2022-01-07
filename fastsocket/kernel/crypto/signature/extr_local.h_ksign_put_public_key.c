
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksign_public_key {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int ksign_free_public_key (struct ksign_public_key*) ;

__attribute__((used)) static inline void ksign_put_public_key(struct ksign_public_key *pk)
{
 if (atomic_dec_and_test(&pk->count))
  ksign_free_public_key(pk);
}
