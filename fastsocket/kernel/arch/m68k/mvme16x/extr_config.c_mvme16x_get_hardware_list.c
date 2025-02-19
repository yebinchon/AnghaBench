
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
typedef TYPE_1__* p_bdid ;
struct TYPE_3__ {int brdno; } ;


 scalar_t__ MVME162_VERSION_REG ;
 unsigned char MVME16x_CONFIG_NO_ETHERNET ;
 unsigned char MVME16x_CONFIG_NO_SCSICHIP ;
 unsigned char MVME16x_CONFIG_NO_VMECHIP2 ;
 TYPE_1__ mvme_bdid ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static void mvme16x_get_hardware_list(struct seq_file *m)
{
    p_bdid p = &mvme_bdid;

    if (p->brdno == 0x0162 || p->brdno == 0x0172)
    {
 unsigned char rev = *(unsigned char *)MVME162_VERSION_REG;

 seq_printf (m, "VMEchip2        %spresent\n",
   rev & MVME16x_CONFIG_NO_VMECHIP2 ? "NOT " : "");
 seq_printf (m, "SCSI interface  %spresent\n",
   rev & MVME16x_CONFIG_NO_SCSICHIP ? "NOT " : "");
 seq_printf (m, "Ethernet i/f    %spresent\n",
   rev & MVME16x_CONFIG_NO_ETHERNET ? "NOT " : "");
    }
}
