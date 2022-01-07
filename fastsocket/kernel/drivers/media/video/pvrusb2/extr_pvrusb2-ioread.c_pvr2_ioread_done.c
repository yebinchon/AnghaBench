
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {int * buffer_storage; } ;


 unsigned int BUFFER_COUNT ;
 int kfree (int ) ;
 int pvr2_ioread_setup (struct pvr2_ioread*,int *) ;

__attribute__((used)) static void pvr2_ioread_done(struct pvr2_ioread *cp)
{
 unsigned int idx;

 pvr2_ioread_setup(cp,((void*)0));
 for (idx = 0; idx < BUFFER_COUNT; idx++) {
  if (!(cp->buffer_storage[idx])) continue;
  kfree(cp->buffer_storage[idx]);
 }
}
