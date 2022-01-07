
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dummy; } ;
struct tun_file {struct tun_struct* tun; int count; } ;


 scalar_t__ atomic_inc_not_zero (int *) ;

__attribute__((used)) static struct tun_struct *__tun_get(struct tun_file *tfile)
{
 struct tun_struct *tun = ((void*)0);

 if (atomic_inc_not_zero(&tfile->count))
  tun = tfile->tun;

 return tun;
}
