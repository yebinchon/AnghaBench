
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct capincci {scalar_t__ ncci; struct capincci* next; } ;
struct capidev {struct capincci* nccis; } ;



__attribute__((used)) static struct capincci *capincci_find(struct capidev *cdev, u32 ncci)
{
 struct capincci *p;

 for (p=cdev->nccis; p ; p = p->next) {
  if (p->ncci == ncci)
   break;
 }
 return p;
}
