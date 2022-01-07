
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int dummy; } ;


 int N_RX_DESC_RINGS ;
 int cas_free_rx_desc (struct cas*,int) ;

__attribute__((used)) static void cas_free_rxds(struct cas *cp)
{
 int i;

 for (i = 0; i < N_RX_DESC_RINGS; i++)
  cas_free_rx_desc(cp, i);
}
