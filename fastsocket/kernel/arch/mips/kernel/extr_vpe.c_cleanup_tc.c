
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc {int index; } ;


 int MVPCONTROL_VPC ;
 int TCHALT_H ;
 int TCSTATUS_A ;
 int TCSTATUS_DA ;
 int TCSTATUS_IXMT ;
 int clear_c0_mvpcontrol (int ) ;
 unsigned int dmt () ;
 unsigned int dvpe () ;
 int emt (unsigned int) ;
 int evpe (unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mips_ihb () ;
 int read_tc_c0_tcstatus () ;
 int set_c0_mvpcontrol (int ) ;
 int settc (int ) ;
 int write_tc_c0_tchalt (int ) ;
 int write_tc_c0_tcstatus (int) ;

__attribute__((used)) static void cleanup_tc(struct tc *tc)
{
 unsigned long flags;
 unsigned int mtflags, vpflags;
 int tmp;

 local_irq_save(flags);
 mtflags = dmt();
 vpflags = dvpe();

 set_c0_mvpcontrol(MVPCONTROL_VPC);

 settc(tc->index);
 tmp = read_tc_c0_tcstatus();


 tmp &= ~(TCSTATUS_A | TCSTATUS_DA);
 tmp |= TCSTATUS_IXMT;
 write_tc_c0_tcstatus(tmp);

 write_tc_c0_tchalt(TCHALT_H);
 mips_ihb();




 clear_c0_mvpcontrol(MVPCONTROL_VPC);
 evpe(vpflags);
 emt(mtflags);
 local_irq_restore(flags);
}
