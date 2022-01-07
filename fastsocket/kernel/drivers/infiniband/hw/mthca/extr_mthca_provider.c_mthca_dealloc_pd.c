
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_pd {int device; } ;


 int kfree (struct ib_pd*) ;
 int mthca_pd_free (int ,int ) ;
 int to_mdev (int ) ;
 int to_mpd (struct ib_pd*) ;

__attribute__((used)) static int mthca_dealloc_pd(struct ib_pd *pd)
{
 mthca_pd_free(to_mdev(pd->device), to_mpd(pd));
 kfree(pd);

 return 0;
}
