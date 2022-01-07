
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int tx_pending; } ;


 int tx_inuse (struct sky2_port const*) ;

__attribute__((used)) static inline int tx_avail(const struct sky2_port *sky2)
{
 return sky2->tx_pending - tx_inuse(sky2);
}
