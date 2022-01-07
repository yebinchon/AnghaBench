
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRDA_ERROR (char*) ;

__attribute__((used)) static int via_ircc_read_dongle_id(int iobase)
{
 int dongle_id = 9;

 IRDA_ERROR("via-ircc: dongle probing not supported, please specify dongle_id module parameter.\n");
 return dongle_id;
}
