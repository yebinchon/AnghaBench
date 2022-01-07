
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtip_port {scalar_t__ mmio; } ;


 scalar_t__ PORT_IRQ_MASK ;
 int mtip_enable_engine (struct mtip_port*,int ) ;
 int mtip_enable_fis (struct mtip_port*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void mtip_deinit_port(struct mtip_port *port)
{

 writel(0, port->mmio + PORT_IRQ_MASK);


 mtip_enable_engine(port, 0);


 mtip_enable_fis(port, 0);
}
