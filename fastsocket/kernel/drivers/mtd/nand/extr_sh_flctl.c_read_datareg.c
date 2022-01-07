
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int * done_buff; } ;


 int FLDATAR (struct sh_flctl*) ;
 unsigned long le32_to_cpu (unsigned long) ;
 unsigned long readl (int ) ;
 int wait_completion (struct sh_flctl*) ;

__attribute__((used)) static void read_datareg(struct sh_flctl *flctl, int offset)
{
 unsigned long data;
 unsigned long *buf = (unsigned long *)&flctl->done_buff[offset];

 wait_completion(flctl);

 data = readl(FLDATAR(flctl));
 *buf = le32_to_cpu(data);
}
