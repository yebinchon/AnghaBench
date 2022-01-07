
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_fh {unsigned int resources; struct em28xx* dev; } ;
struct em28xx {unsigned int resources; } ;


 int em28xx_videodbg (char*,unsigned int) ;

__attribute__((used)) static int res_get(struct em28xx_fh *fh, unsigned int bit)
{
 struct em28xx *dev = fh->dev;

 if (fh->resources & bit)

  return 1;


 if (dev->resources & bit) {

  return 0;
 }

 fh->resources |= bit;
 dev->resources |= bit;
 em28xx_videodbg("res: get %d\n", bit);
 return 1;
}
