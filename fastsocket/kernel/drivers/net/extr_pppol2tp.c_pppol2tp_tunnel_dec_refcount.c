
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppol2tp_tunnel {int ref_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int pppol2tp_tunnel_free (struct pppol2tp_tunnel*) ;

__attribute__((used)) static inline void pppol2tp_tunnel_dec_refcount(struct pppol2tp_tunnel *tunnel)
{
 if (atomic_dec_and_test(&tunnel->ref_count))
  pppol2tp_tunnel_free(tunnel);
}
