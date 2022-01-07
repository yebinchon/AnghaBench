
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac {int dummy; } ;


 int kfree (struct cmac*) ;

__attribute__((used)) static void mac_destroy(struct cmac *mac)
{
 kfree(mac);
}
