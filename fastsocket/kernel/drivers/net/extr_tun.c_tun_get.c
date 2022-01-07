
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dummy; } ;
struct file {int private_data; } ;


 struct tun_struct* __tun_get (int ) ;

__attribute__((used)) static struct tun_struct *tun_get(struct file *file)
{
 return __tun_get(file->private_data);
}
