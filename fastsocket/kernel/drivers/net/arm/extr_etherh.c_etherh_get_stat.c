
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etherh_priv {int ctrl_port; } ;


 unsigned int readb (int ) ;

__attribute__((used)) static inline unsigned int etherh_get_stat(struct etherh_priv *eh)
{
 return readb(eh->ctrl_port);
}
