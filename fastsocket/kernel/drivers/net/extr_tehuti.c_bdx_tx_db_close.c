
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdb {int * start; } ;


 int BDX_ASSERT (int ) ;
 int vfree (int *) ;

__attribute__((used)) static void bdx_tx_db_close(struct txdb *d)
{
 BDX_ASSERT(d == ((void*)0));

 vfree(d->start);
 d->start = ((void*)0);
}
