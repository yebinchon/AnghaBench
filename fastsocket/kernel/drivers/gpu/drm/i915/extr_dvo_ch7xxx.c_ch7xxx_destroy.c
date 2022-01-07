
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dvo_device {struct ch7xxx_priv* dev_priv; } ;
struct ch7xxx_priv {int dummy; } ;


 int kfree (struct ch7xxx_priv*) ;

__attribute__((used)) static void ch7xxx_destroy(struct intel_dvo_device *dvo)
{
 struct ch7xxx_priv *ch7xxx = dvo->dev_priv;

 if (ch7xxx) {
  kfree(ch7xxx);
  dvo->dev_priv = ((void*)0);
 }
}
