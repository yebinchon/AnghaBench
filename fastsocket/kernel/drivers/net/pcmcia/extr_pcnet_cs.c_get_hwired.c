
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct net_device* priv; } ;
struct net_device {scalar_t__* dev_addr; } ;
typedef int hw_info_t ;


 int default_info ;
 scalar_t__* hw_addr ;

__attribute__((used)) static hw_info_t *get_hwired(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    int i;

    for (i = 0; i < 6; i++)
 if (hw_addr[i] != 0) break;
    if (i == 6)
 return ((void*)0);

    for (i = 0; i < 6; i++)
 dev->dev_addr[i] = hw_addr[i];

    return &default_info;
}
