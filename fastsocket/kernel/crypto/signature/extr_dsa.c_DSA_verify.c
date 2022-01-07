
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * MPI ;


 int EINVAL ;
 int EKEYREJECTED ;
 int ENOMEM ;
 int * mpi_alloc (int ) ;
 scalar_t__ mpi_cmp (int *,int *) ;
 scalar_t__ mpi_cmp_ui (int *,int ) ;
 scalar_t__ mpi_fdiv_r (int *,int *,int *) ;
 int mpi_free (int *) ;
 int mpi_get_nlimbs (int *) ;
 scalar_t__ mpi_invm (int *,int *,int *) ;
 scalar_t__ mpi_mulm (int *,int *,int *,int *) ;
 scalar_t__ mpi_mulpowm (int *,int **,int **,int *) ;
 int printk (char*) ;

int DSA_verify(const MPI datahash, const MPI sig[], const MPI pkey[])
{
 MPI p, q, g, y, r, s;
 MPI w = ((void*)0), u1 = ((void*)0), u2 = ((void*)0), v = ((void*)0);
 MPI base[3];
 MPI exp[3];
 int rc;

 if (!datahash ||
     !sig[0] || !sig[1] ||
     !pkey[0] || !pkey[1] || !pkey[2] || !pkey[3])
  return -EINVAL;

 p = pkey[0];
 q = pkey[1];
 g = pkey[2];
 y = pkey[3];
 r = sig[0];
 s = sig[1];

 if (!(mpi_cmp_ui(r, 0) > 0 && mpi_cmp(r, q) < 0)) {
  printk("DSA_verify assertion failed [0 < r < q]\n");
  return -EKEYREJECTED;
 }

 if (!(mpi_cmp_ui(s, 0) > 0 && mpi_cmp(s, q) < 0)) {
  printk("DSA_verify assertion failed [0 < s < q]\n");
  return -EKEYREJECTED;
 }

 rc = -ENOMEM;
 w = mpi_alloc(mpi_get_nlimbs(q)); if (!w ) goto cleanup;
 u1 = mpi_alloc(mpi_get_nlimbs(q)); if (!u1) goto cleanup;
 u2 = mpi_alloc(mpi_get_nlimbs(q)); if (!u2) goto cleanup;
 v = mpi_alloc(mpi_get_nlimbs(p)); if (!v ) goto cleanup;


 if (mpi_invm(w, s, q) < 0)
  goto cleanup;


 if (mpi_mulm(u1, datahash, w, q) < 0)
  goto cleanup;


 if (mpi_mulm(u2, r, w, q) < 0)
  goto cleanup;


 base[0] = g; exp[0] = u1;
 base[1] = y; exp[1] = u2;
 base[2] = ((void*)0); exp[2] = ((void*)0);

 if (mpi_mulpowm(v, base, exp, p) < 0)
  goto cleanup;

 if (mpi_fdiv_r(v, v, q) < 0)
  goto cleanup;

 rc = (mpi_cmp(v, r) == 0) ? 0 : -EKEYREJECTED;

cleanup:
 mpi_free(w);
 mpi_free(u1);
 mpi_free(u2);
 mpi_free(v);
 return rc;
}
