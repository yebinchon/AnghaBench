
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_driver_data {unsigned char* nic_serial; int nic_part; } ;


 int read_redir_map (struct ioc3_driver_data*,unsigned long,unsigned char*) ;
 int read_redir_page (struct ioc3_driver_data*,unsigned long,int,unsigned char*,unsigned char*) ;
 int strcpy (int ,unsigned char*) ;
 int strncmp (unsigned char*,char*,int) ;

__attribute__((used)) static void read_nic(struct ioc3_driver_data *idd, unsigned long addr)
{
 unsigned char redir[64];
 unsigned char data[64],part[32];
 int i,j;


 read_redir_map(idd, addr, redir);

 read_redir_page(idd, addr, 0, redir, data);
 read_redir_page(idd, addr, 1, redir, data+32);

 j=0;
 for(i=0;i<19;i++)
  if(data[i+11] != ' ')
   part[j++] = data[i+11];
 for(i=0;i<6;i++)
  if(data[i+32] != ' ')
   part[j++] = data[i+32];
 part[j] = 0;

 if(!strncmp(part, "060-0035-", 9))
  return;
 if(!strncmp(part, "060-0038-", 9))
  return;
 strcpy(idd->nic_part, part);

 j=0;
 for(i=0;i<10;i++)
  if(data[i+1] != ' ')
   idd->nic_serial[j++] = data[i+1];
 idd->nic_serial[j] = 0;
}
