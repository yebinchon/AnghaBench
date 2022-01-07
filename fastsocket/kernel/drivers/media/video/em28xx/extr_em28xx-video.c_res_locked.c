
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {unsigned int resources; } ;



__attribute__((used)) static int res_locked(struct em28xx *dev, unsigned int bit)
{
 return dev->resources & bit;
}
