
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp_response ;


 int cpcmd (char*,char*,int,int *) ;
 char* strnchr (char*,int,char) ;
 int strncmp (char*,char*,int) ;
 int strnlen (char*,int) ;

__attribute__((used)) static int vmlogrdr_get_recording_class_AB(void)
{
 char cp_command[]="QUERY COMMAND RECORDING ";
 char cp_response[80];
 char *tail;
 int len,i;

 cpcmd(cp_command, cp_response, sizeof(cp_response), ((void*)0));
 len = strnlen(cp_response,sizeof(cp_response));

 tail=strnchr(cp_response,len,'=');
 if (!tail)
  return 0;
 tail++;
 if (!strncmp("ANY",tail,3))
  return 1;
 if (!strncmp("NONE",tail,4))
  return 0;




        for (i=tail-cp_response; i<len; i++)
  if ( cp_response[i]=='A' || cp_response[i]=='B' )
   return 1;
 return 0;
}
