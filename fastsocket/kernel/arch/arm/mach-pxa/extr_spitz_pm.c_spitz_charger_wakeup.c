
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long GPIO_bit (int ) ;
 unsigned long GPLR0 ;
 int SPITZ_GPIO_KEY_INT ;
 int SPITZ_GPIO_SYNC ;

__attribute__((used)) static unsigned long spitz_charger_wakeup(void)
{
 return (~GPLR0 & GPIO_bit(SPITZ_GPIO_KEY_INT)) | (GPLR0 & GPIO_bit(SPITZ_GPIO_SYNC));
}
