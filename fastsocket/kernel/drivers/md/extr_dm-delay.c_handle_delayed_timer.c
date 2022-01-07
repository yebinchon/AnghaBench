
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delay_c {int flush_expired_bios; } ;


 int kdelayd_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void handle_delayed_timer(unsigned long data)
{
 struct delay_c *dc = (struct delay_c *)data;

 queue_work(kdelayd_wq, &dc->flush_expired_bios);
}
