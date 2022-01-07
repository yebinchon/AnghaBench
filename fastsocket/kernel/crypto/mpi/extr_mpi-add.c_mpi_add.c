
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ mpi_size_t ;
typedef scalar_t__* mpi_ptr_t ;
typedef scalar_t__ mpi_limb_t ;
struct TYPE_6__ {scalar_t__ nlimbs; int sign; scalar_t__* d; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 int MPN_COPY (scalar_t__*,scalar_t__*,scalar_t__) ;
 int MPN_NORMALIZE (scalar_t__*,scalar_t__) ;
 scalar_t__ RESIZE_IF_NEEDED (TYPE_1__*,scalar_t__) ;
 scalar_t__ mpihelp_add (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__) ;
 scalar_t__ mpihelp_cmp (scalar_t__*,scalar_t__*,scalar_t__) ;
 int mpihelp_sub (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__) ;
 int mpihelp_sub_n (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__) ;

int
mpi_add(MPI w, MPI u, MPI v)
{
    mpi_ptr_t wp, up, vp;
    mpi_size_t usize, vsize, wsize;
    int usign, vsign, wsign;

    if( u->nlimbs < v->nlimbs ) {
 usize = v->nlimbs;
 usign = v->sign;
 vsize = u->nlimbs;
 vsign = u->sign;
 wsize = usize + 1;
 if (RESIZE_IF_NEEDED(w, wsize) < 0)
  return -ENOMEM;

 up = v->d;
 vp = u->d;
    }
    else {
 usize = u->nlimbs;
 usign = u->sign;
 vsize = v->nlimbs;
 vsign = v->sign;
 wsize = usize + 1;
 if (RESIZE_IF_NEEDED(w, wsize) < 0)
  return -ENOMEM;

 up = u->d;
 vp = v->d;
    }
    wp = w->d;
    wsign = 0;

    if( !vsize ) {
        MPN_COPY(wp, up, usize );
 wsize = usize;
 wsign = usign;
    }
    else if( usign != vsign ) {

 if( usize != vsize ) {
     mpihelp_sub(wp, up, usize, vp, vsize);
     wsize = usize;
     MPN_NORMALIZE(wp, wsize);
     wsign = usign;
 }
 else if( mpihelp_cmp(up, vp, usize) < 0 ) {
     mpihelp_sub_n(wp, vp, up, usize);
     wsize = usize;
     MPN_NORMALIZE(wp, wsize);
     if( !usign )
  wsign = 1;
 }
 else {
     mpihelp_sub_n(wp, up, vp, usize);
     wsize = usize;
     MPN_NORMALIZE(wp, wsize);
     if( usign )
  wsign = 1;
 }
    }
    else {
 mpi_limb_t cy = mpihelp_add(wp, up, usize, vp, vsize);
 wp[usize] = cy;
 wsize = usize + cy;
 if( usign )
     wsign = 1;
    }

    w->nlimbs = wsize;
    w->sign = wsign;
    return 0;
}
