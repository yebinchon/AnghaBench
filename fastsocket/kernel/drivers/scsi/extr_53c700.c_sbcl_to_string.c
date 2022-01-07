
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int * NCR_700_SBCL_bits ;
 int * NCR_700_SBCL_to_phase ;
 int strcat (char*,int ) ;

__attribute__((used)) static inline char *
sbcl_to_string(__u8 sbcl)
{
 int i;
 static char ret[256];

 ret[0]='\0';
 for(i=0; i<8; i++) {
  if((1<<i) & sbcl)
   strcat(ret, NCR_700_SBCL_bits[i]);
 }
 strcat(ret, NCR_700_SBCL_to_phase[sbcl & 0x07]);
 return ret;
}
