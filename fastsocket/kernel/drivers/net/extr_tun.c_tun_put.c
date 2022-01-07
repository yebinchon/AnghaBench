
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {struct tun_file* tfile; } ;
struct tun_file {int tun; int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int tun_detach (int ) ;

__attribute__((used)) static void tun_put(struct tun_struct *tun)
{
 struct tun_file *tfile = tun->tfile;

 if (atomic_dec_and_test(&tfile->count))
  tun_detach(tfile->tun);
}
