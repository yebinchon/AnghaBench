
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTHCA_QP_ST_MLX ;
 int MTHCA_QP_ST_RC ;
 int MTHCA_QP_ST_RD ;
 int MTHCA_QP_ST_UC ;
 int MTHCA_QP_ST_UD ;





__attribute__((used)) static int to_mthca_st(int transport)
{
 switch (transport) {
 case 131: return MTHCA_QP_ST_RC;
 case 129: return MTHCA_QP_ST_UC;
 case 128: return MTHCA_QP_ST_UD;
 case 130: return MTHCA_QP_ST_RD;
 case 132: return MTHCA_QP_ST_MLX;
 default: return -1;
 }
}
