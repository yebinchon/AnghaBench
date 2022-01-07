
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil164_priv {int dummy; } ;
struct intel_dvo_device {struct sil164_priv* dev_priv; } ;


 int kfree (struct sil164_priv*) ;

__attribute__((used)) static void sil164_destroy(struct intel_dvo_device *dvo)
{
 struct sil164_priv *sil = dvo->dev_priv;

 if (sil) {
  kfree(sil);
  dvo->dev_priv = ((void*)0);
 }
}
