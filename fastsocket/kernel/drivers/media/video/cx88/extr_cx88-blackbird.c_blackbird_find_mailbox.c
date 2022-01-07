
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx8802_dev {int core; } ;


 int BLACKBIRD_FIRM_IMAGE_SIZE ;
 int dprintk (int,char*) ;
 int memory_read (int ,int,int*) ;

__attribute__((used)) static int blackbird_find_mailbox(struct cx8802_dev *dev)
{
 u32 signature[4]={0x12345678, 0x34567812, 0x56781234, 0x78123456};
 int signaturecnt=0;
 u32 value;
 int i;

 for (i = 0; i < BLACKBIRD_FIRM_IMAGE_SIZE; i++) {
  memory_read(dev->core, i, &value);
  if (value == signature[signaturecnt])
   signaturecnt++;
  else
   signaturecnt = 0;
  if (4 == signaturecnt) {
   dprintk(1, "Mailbox signature found\n");
   return i+1;
  }
 }
 dprintk(0, "Mailbox signature values not found!\n");
 return -1;
}
