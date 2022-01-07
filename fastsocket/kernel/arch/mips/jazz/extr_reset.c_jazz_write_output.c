
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command; unsigned char data; } ;


 int KBD_STAT_IBF ;
 TYPE_1__* jazz_kh ;

__attribute__((used)) static void jazz_write_output(unsigned char val)
{
 int status;

 do {
  status = jazz_kh->command;
 } while (status & KBD_STAT_IBF);
 jazz_kh->data = val;
}
