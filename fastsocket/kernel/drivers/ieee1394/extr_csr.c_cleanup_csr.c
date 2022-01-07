
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int csr1212_release_keyval (scalar_t__) ;
 int csr_highlevel ;
 int hpsb_unregister_highlevel (int *) ;
 scalar_t__ node_cap ;

void cleanup_csr(void)
{
 if (node_cap)
  csr1212_release_keyval(node_cap);
        hpsb_unregister_highlevel(&csr_highlevel);
}
