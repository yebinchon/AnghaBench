
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct radeon_mode_info {TYPE_2__* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct radeon_atom_ss {int refdiv; int range; int delay; int step; int type; int percentage; } ;
struct _ATOM_SPREAD_SPECTRUM_INFO {TYPE_1__* asSS_Info; } ;
struct TYPE_4__ {int bios; } ;
struct TYPE_3__ {int ucSS_Id; int ucRecommendedRef_Div; int ucSS_Range; int ucSS_Delay; int ucSS_Step; int ucSpreadSpectrumType; int usSpreadSpectrumPercentage; } ;
typedef int ATOM_SPREAD_SPECTRUM_ASSIGNMENT ;
typedef int ATOM_COMMON_TABLE_HEADER ;


 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int PPLL_SS_Info ;
 scalar_t__ atom_parse_data_header (TYPE_2__*,int,int*,int *,int *,int*) ;
 int le16_to_cpu (int ) ;
 int memset (struct radeon_atom_ss*,int ,int) ;

bool radeon_atombios_get_ppll_ss_info(struct radeon_device *rdev,
          struct radeon_atom_ss *ss,
          int id)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, PPLL_SS_Info);
 uint16_t data_offset, size;
 struct _ATOM_SPREAD_SPECTRUM_INFO *ss_info;
 uint8_t frev, crev;
 int i, num_indices;

 memset(ss, 0, sizeof(struct radeon_atom_ss));
 if (atom_parse_data_header(mode_info->atom_context, index, &size,
       &frev, &crev, &data_offset)) {
  ss_info =
   (struct _ATOM_SPREAD_SPECTRUM_INFO *)(mode_info->atom_context->bios + data_offset);

  num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
   sizeof(ATOM_SPREAD_SPECTRUM_ASSIGNMENT);

  for (i = 0; i < num_indices; i++) {
   if (ss_info->asSS_Info[i].ucSS_Id == id) {
    ss->percentage =
     le16_to_cpu(ss_info->asSS_Info[i].usSpreadSpectrumPercentage);
    ss->type = ss_info->asSS_Info[i].ucSpreadSpectrumType;
    ss->step = ss_info->asSS_Info[i].ucSS_Step;
    ss->delay = ss_info->asSS_Info[i].ucSS_Delay;
    ss->range = ss_info->asSS_Info[i].ucSS_Range;
    ss->refdiv = ss_info->asSS_Info[i].ucRecommendedRef_Div;
    return 1;
   }
  }
 }
 return 0;
}
