
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_card {int dev; } ;


 int dev_attr_card_id ;
 int dev_attr_name ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int pnp_interface_attach_card(struct pnp_card *card)
{
 int rc = device_create_file(&card->dev, &dev_attr_name);

 if (rc)
  return rc;

 rc = device_create_file(&card->dev, &dev_attr_card_id);
 if (rc)
  goto err_name;

 return 0;

err_name:
 device_remove_file(&card->dev, &dev_attr_name);
 return rc;
}
