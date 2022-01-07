
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_kmi_port {int io; } ;
struct amba_device {int dummy; } ;


 struct amba_kmi_port* amba_get_drvdata (struct amba_device*) ;
 int serio_reconnect (int ) ;

__attribute__((used)) static int amba_kmi_resume(struct amba_device *dev)
{
 struct amba_kmi_port *kmi = amba_get_drvdata(dev);


 serio_reconnect(kmi->io);

 return 0;
}
