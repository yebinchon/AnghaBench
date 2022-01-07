
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ov7670_info {int sat; scalar_t__ hue; TYPE_1__* fmt; } ;
struct TYPE_2__ {int* cmatrix; } ;


 int CMATRIX_LEN ;
 int memcpy (int*,int*,int) ;
 int ov7670_cosine (scalar_t__) ;
 int ov7670_sine (scalar_t__) ;

__attribute__((used)) static void ov7670_calc_cmatrix(struct ov7670_info *info,
  int matrix[CMATRIX_LEN])
{
 int i;



 for (i = 0; i < CMATRIX_LEN; i++)
  matrix[i] = (info->fmt->cmatrix[i]*info->sat) >> 7;



 if (info->hue != 0) {
  int sinth, costh, tmpmatrix[CMATRIX_LEN];

  memcpy(tmpmatrix, matrix, CMATRIX_LEN*sizeof(int));
  sinth = ov7670_sine(info->hue);
  costh = ov7670_cosine(info->hue);

  matrix[0] = (matrix[3]*sinth + matrix[0]*costh)/1000;
  matrix[1] = (matrix[4]*sinth + matrix[1]*costh)/1000;
  matrix[2] = (matrix[5]*sinth + matrix[2]*costh)/1000;
  matrix[3] = (matrix[3]*costh - matrix[0]*sinth)/1000;
  matrix[4] = (matrix[4]*costh - matrix[1]*sinth)/1000;
  matrix[5] = (matrix[5]*costh - matrix[2]*sinth)/1000;
 }
}
