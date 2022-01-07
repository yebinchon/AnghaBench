
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {unsigned int input; } ;



__attribute__((used)) static int bttv_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 *i = btv->input;

 return 0;
}
