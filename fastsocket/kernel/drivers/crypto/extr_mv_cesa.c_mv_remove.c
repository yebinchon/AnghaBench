
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct crypto_priv {int reg; int sram; int sram_size; int irq; int queue_th; } ;


 int * cpg ;
 int crypto_unregister_alg (int *) ;
 int free_irq (int ,struct crypto_priv*) ;
 int iounmap (int ) ;
 int kfree (struct crypto_priv*) ;
 int kthread_stop (int ) ;
 int memset (int ,int ,int ) ;
 int mv_aes_alg_cbc ;
 int mv_aes_alg_ecb ;
 struct crypto_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mv_remove(struct platform_device *pdev)
{
 struct crypto_priv *cp = platform_get_drvdata(pdev);

 crypto_unregister_alg(&mv_aes_alg_ecb);
 crypto_unregister_alg(&mv_aes_alg_cbc);
 kthread_stop(cp->queue_th);
 free_irq(cp->irq, cp);
 memset(cp->sram, 0, cp->sram_size);
 iounmap(cp->sram);
 iounmap(cp->reg);
 kfree(cp);
 cpg = ((void*)0);
 return 0;
}
