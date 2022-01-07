
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv_fh {int resources; } ;



__attribute__((used)) static
int check_btres(struct bttv_fh *fh, int bit)
{
 return (fh->resources & bit);
}
