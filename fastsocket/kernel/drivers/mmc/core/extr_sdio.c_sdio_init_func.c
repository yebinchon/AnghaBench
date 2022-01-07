
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {unsigned int num; } ;
struct mmc_card {struct sdio_func** sdio_func; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct sdio_func*) ;
 int PTR_ERR (struct sdio_func*) ;
 unsigned int SDIO_MAX_FUNCS ;
 struct sdio_func* sdio_alloc_func (struct mmc_card*) ;
 int sdio_read_fbr (struct sdio_func*) ;
 int sdio_read_func_cis (struct sdio_func*) ;
 int sdio_remove_func (struct sdio_func*) ;

__attribute__((used)) static int sdio_init_func(struct mmc_card *card, unsigned int fn)
{
 int ret;
 struct sdio_func *func;

 BUG_ON(fn > SDIO_MAX_FUNCS);

 func = sdio_alloc_func(card);
 if (IS_ERR(func))
  return PTR_ERR(func);

 func->num = fn;

 ret = sdio_read_fbr(func);
 if (ret)
  goto fail;

 ret = sdio_read_func_cis(func);
 if (ret)
  goto fail;

 card->sdio_func[fn - 1] = func;

 return 0;

fail:




 sdio_remove_func(func);
 return ret;
}
