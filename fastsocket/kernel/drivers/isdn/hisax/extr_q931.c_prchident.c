
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int prbits (char*,int ,int,int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int
prchident(char *dest, u_char * p)
{
 char *dp = dest;

 p += 2;
 dp += sprintf(dp, "    octet 3 ");
 dp += prbits(dp, *p, 8, 8);
 *dp++ = '\n';
 return (dp - dest);
}
