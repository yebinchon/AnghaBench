
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppol2tp_tunnel {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void pppol2tp_tunnel_inc_refcount(struct pppol2tp_tunnel *tunnel)
{
 atomic_inc(&tunnel->ref_count);
}
