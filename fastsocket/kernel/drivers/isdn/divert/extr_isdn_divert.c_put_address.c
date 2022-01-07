
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int put_address(char *st, u_char *p, int len)
{ u_char retval = 0;
  u_char adr_typ = 0;

  if (len < 2) return(retval);
  if (*p == 0xA1)
   { retval = *(++p) + 2;
     if (retval > len) return(0);
     len = retval - 2;
     if (len < 3) return(0);
     if ((*(++p) != 0x0A) || (*(++p) != 1)) return(0);
     adr_typ = *(++p);
     len -= 3;
     p++;
     if (len < 2) return(0);
     if (*p++ != 0x12) return(0);
     if (*p > len) return(0);
     len = *p++;
   }
  else
   if (*p == 0x80)
    { retval = *(++p) + 2;
      if (retval > len) return(0);
      len = retval - 2;
      p++;
    }
   else
    return(0);

  sprintf(st,"%d ",adr_typ);
  st += strlen(st);
  if (!len)
    *st++ = '-';
  else
   while (len--)
     *st++ = *p++;
  *st = '\0';
  return(retval);
}
