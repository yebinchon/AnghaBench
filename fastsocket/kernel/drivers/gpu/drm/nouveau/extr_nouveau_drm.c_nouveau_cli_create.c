
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nouveau_cli {int mutex; int base; } ;


 int mutex_init (int *) ;
 int nouveau_client_create_ (char const*,int ,int ,int ,int,void**) ;
 int nouveau_client_destroy (int *) ;
 int nouveau_config ;
 int nouveau_debug ;
 int nouveau_name (struct pci_dev*) ;

__attribute__((used)) static int
nouveau_cli_create(struct pci_dev *pdev, const char *name,
     int size, void **pcli)
{
 struct nouveau_cli *cli;
 int ret;

 *pcli = ((void*)0);
 ret = nouveau_client_create_(name, nouveau_name(pdev), nouveau_config,
         nouveau_debug, size, pcli);
 cli = *pcli;
 if (ret) {
  if (cli)
   nouveau_client_destroy(&cli->base);
  *pcli = ((void*)0);
  return ret;
 }

 mutex_init(&cli->mutex);
 return 0;
}
