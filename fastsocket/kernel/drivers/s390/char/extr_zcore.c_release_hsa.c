
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG308_REL_HSA ;
 int diag308 (int ,int *) ;
 scalar_t__ hsa_available ;

__attribute__((used)) static void release_hsa(void)
{
 diag308(DIAG308_REL_HSA, ((void*)0));
 hsa_available = 0;
}
