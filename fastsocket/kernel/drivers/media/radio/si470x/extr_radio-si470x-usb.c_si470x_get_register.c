
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int * registers; } ;
typedef int buf ;


 int EINVAL ;
 unsigned char REGISTER_REPORT (int) ;
 int REGISTER_REPORT_SIZE ;
 int get_unaligned_be16 (unsigned char*) ;
 int si470x_get_report (struct si470x_device*,void*,int) ;

int si470x_get_register(struct si470x_device *radio, int regnr)
{
 unsigned char buf[REGISTER_REPORT_SIZE];
 int retval;

 buf[0] = REGISTER_REPORT(regnr);

 retval = si470x_get_report(radio, (void *) &buf, sizeof(buf));

 if (retval >= 0)
  radio->registers[regnr] = get_unaligned_be16(&buf[1]);

 return (retval < 0) ? -EINVAL : 0;
}
