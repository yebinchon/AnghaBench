
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_port {int dummy; } ;


 int SCC_ACCESS_INIT (struct scc_port*) ;
 int SCCread (int ) ;
 int SCSR_ALL_SENT ;
 int SPCOND_STATUS_REG ;

__attribute__((used)) static int scc_chars_in_buffer (void *ptr)
{
 struct scc_port *port = ptr;
 SCC_ACCESS_INIT(port);

 return (SCCread (SPCOND_STATUS_REG) & SCSR_ALL_SENT) ? 0 : 1;
}
