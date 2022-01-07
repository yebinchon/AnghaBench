
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int resources; } ;



__attribute__((used)) static
int locked_btres(struct bttv *btv, int bit)
{
 return (btv->resources & bit);
}
