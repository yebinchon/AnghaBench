
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int (* recover ) (struct av7110*) ;} ;


 int av7110_bootarm (struct av7110*) ;
 int av7110_check_ir_config (struct av7110*,int) ;
 int dprintk (int,char*,struct av7110*) ;
 int init_av7110_av (struct av7110*) ;
 int msleep (int) ;
 int restart_feeds (struct av7110*) ;
 int stub1 (struct av7110*) ;

__attribute__((used)) static void recover_arm(struct av7110 *av7110)
{
 dprintk(4, "%p\n",av7110);

 av7110_bootarm(av7110);
 msleep(100);

 init_av7110_av(av7110);


 if (av7110->recover)
  av7110->recover(av7110);

 restart_feeds(av7110);




}
