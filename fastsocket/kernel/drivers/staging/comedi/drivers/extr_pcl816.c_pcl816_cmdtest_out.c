
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {int chanlist_len; int scan_end_arg; int stop_arg; int scan_end_src; int stop_src; int convert_arg; int scan_begin_arg; int start_arg; int convert_src; int scan_begin_src; int start_src; } ;


 int printk (char*,int,int ,int ,...) ;

__attribute__((used)) static void pcl816_cmdtest_out(int e, struct comedi_cmd *cmd)
{
 printk("pcl816 e=%d startsrc=%x scansrc=%x convsrc=%x\n", e,
        cmd->start_src, cmd->scan_begin_src, cmd->convert_src);
 printk("pcl816 e=%d startarg=%d scanarg=%d convarg=%d\n", e,
        cmd->start_arg, cmd->scan_begin_arg, cmd->convert_arg);
 printk("pcl816 e=%d stopsrc=%x scanend=%x\n", e, cmd->stop_src,
        cmd->scan_end_src);
 printk("pcl816 e=%d stoparg=%d scanendarg=%d chanlistlen=%d\n", e,
        cmd->stop_arg, cmd->scan_end_arg, cmd->chanlist_len);
}
