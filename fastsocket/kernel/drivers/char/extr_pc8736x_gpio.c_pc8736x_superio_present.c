
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_BASE1 ;
 int SIO_BASE2 ;
 int SIO_SID ;
 int SIO_SID_PC87365 ;
 int SIO_SID_PC87366 ;
 int superio_cmd ;
 int superio_inb (int ) ;

__attribute__((used)) static int pc8736x_superio_present(void)
{
 int id;


 superio_cmd = SIO_BASE1;
 id = superio_inb(SIO_SID);
 if (id == SIO_SID_PC87365 || id == SIO_SID_PC87366)
  return superio_cmd;

 superio_cmd = SIO_BASE2;
 id = superio_inb(SIO_SID);
 if (id == SIO_SID_PC87365 || id == SIO_SID_PC87366)
  return superio_cmd;

 return 0;
}
