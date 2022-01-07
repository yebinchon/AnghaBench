
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fore200e_aal { ____Placeholder_fore200e_aal } fore200e_aal ;







 int EINVAL ;
 int FORE200E_AAL0 ;
 int FORE200E_AAL34 ;
 int FORE200E_AAL5 ;

__attribute__((used)) static enum fore200e_aal
fore200e_atm2fore_aal(int aal)
{
    switch(aal) {
    case 132: return FORE200E_AAL0;
    case 129: return FORE200E_AAL34;
    case 131:
    case 130:
    case 128: return FORE200E_AAL5;
    }

    return -EINVAL;
}
