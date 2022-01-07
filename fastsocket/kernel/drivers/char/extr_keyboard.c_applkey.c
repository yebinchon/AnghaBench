
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int puts_queue (struct vc_data*,char*) ;

__attribute__((used)) static void applkey(struct vc_data *vc, int key, char mode)
{
 static char buf[] = { 0x1b, 'O', 0x00, 0x00 };

 buf[1] = (mode ? 'O' : '[');
 buf[2] = key;
 puts_queue(vc, buf);
}
