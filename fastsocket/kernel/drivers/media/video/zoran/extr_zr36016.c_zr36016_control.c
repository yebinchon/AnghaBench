
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36016 {int name; } ;
struct videocodec {scalar_t__ data; } ;
 int EFAULT ;
 int EINVAL ;
 int ENXIO ;
 int dprintk (int,char*,int ,int,int) ;

__attribute__((used)) static int
zr36016_control (struct videocodec *codec,
   int type,
   int size,
   void *data)
{
 struct zr36016 *ptr = (struct zr36016 *) codec->data;
 int *ival = (int *) data;

 dprintk(2, "%s: control %d call with %d byte\n", ptr->name, type,
  size);

 switch (type) {
 case 132:
  if (size != sizeof(int))
   return -EFAULT;
  *ival = 0;
  break;

 case 133:
  if (size != sizeof(int))
   return -EFAULT;
  *ival = 0;
  break;

 case 130:
  if (size != sizeof(int))
   return -EFAULT;
  if (*ival != 0)
   return -EINVAL;

  return 0;

 case 131:
 case 128:
  return 0;

 case 129:

  return -ENXIO;

 default:
  return -EINVAL;
 }

 return size;
}
