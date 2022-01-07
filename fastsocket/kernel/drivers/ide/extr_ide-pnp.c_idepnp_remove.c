
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct ide_host {int dummy; } ;


 int ide_host_remove (struct ide_host*) ;
 struct ide_host* pnp_get_drvdata (struct pnp_dev*) ;
 int pnp_port_start (struct pnp_dev*,int) ;
 int release_region (int ,int) ;

__attribute__((used)) static void idepnp_remove(struct pnp_dev *dev)
{
 struct ide_host *host = pnp_get_drvdata(dev);

 ide_host_remove(host);

 release_region(pnp_port_start(dev, 1), 1);
 release_region(pnp_port_start(dev, 0), 8);
}
