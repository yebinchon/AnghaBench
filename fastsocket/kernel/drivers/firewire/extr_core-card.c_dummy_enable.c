
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_card {int dummy; } ;


 int BUG () ;

__attribute__((used)) static int dummy_enable(struct fw_card *card, u32 *config_rom, size_t length)
{
 BUG();
 return -1;
}
