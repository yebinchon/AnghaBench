
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_device_id {scalar_t__ type; } ;
struct tifm_dev {scalar_t__ type; } ;



__attribute__((used)) static int tifm_dev_match(struct tifm_dev *sock, struct tifm_device_id *id)
{
 if (sock->type == id->type)
  return 1;
 return 0;
}
