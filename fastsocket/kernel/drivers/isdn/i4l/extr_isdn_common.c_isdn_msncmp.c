
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISDN_MSNLEN ;
 int isdn_wildmat (char*,char*) ;

int isdn_msncmp( const char * msn1, const char * msn2 )
{
 char TmpMsn1[ ISDN_MSNLEN ];
 char TmpMsn2[ ISDN_MSNLEN ];
 char *p;

 for ( p = TmpMsn1; *msn1 && *msn1 != ':'; )
  *p++ = *msn1++;
 *p = '\0';

 for ( p = TmpMsn2; *msn2 && *msn2 != ':'; )
  *p++ = *msn2++;
 *p = '\0';

 return isdn_wildmat( TmpMsn1, TmpMsn2 );
}
