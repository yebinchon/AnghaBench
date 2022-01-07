
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpi_size_t ;
typedef unsigned long* mpi_ptr_t ;
typedef void* mpi_limb_t ;
struct TYPE_5__ {int nlimbs; int sign; int alloced; unsigned long* d; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 scalar_t__ mpi_resize (TYPE_1__*,int) ;
 void* mpihelp_add_1 (unsigned long*,unsigned long*,int,unsigned long) ;
 int mpihelp_sub_1 (unsigned long*,unsigned long*,int,unsigned long) ;

int
mpi_add_ui(MPI w, const MPI u, unsigned long v )
{
    mpi_ptr_t wp, up;
    mpi_size_t usize, wsize;
    int usign, wsign;

    usize = u->nlimbs;
    usign = u->sign;
    wsign = 0;


    wsize = usize + 1;
    if( w->alloced < wsize )
     if (mpi_resize(w, wsize) < 0)
      return -ENOMEM;


    up = u->d;
    wp = w->d;

    if( !usize ) {
 wp[0] = v;
 wsize = v? 1:0;
    }
    else if( !usign ) {
 mpi_limb_t cy;
 cy = mpihelp_add_1(wp, up, usize, v);
 wp[usize] = cy;
 wsize = usize + cy;
    }
    else {

 if( usize == 1 && up[0] < v ) {
     wp[0] = v - up[0];
     wsize = 1;
 }
 else {
     mpihelp_sub_1(wp, up, usize, v);

     wsize = usize - (wp[usize-1]==0);
     wsign = 1;
 }
    }

    w->nlimbs = wsize;
    w->sign = wsign;
    return 0;
}
