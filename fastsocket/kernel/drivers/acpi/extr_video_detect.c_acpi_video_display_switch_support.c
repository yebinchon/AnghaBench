
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_VIDEO_OUTPUT_SWITCHING ;
 int ACPI_VIDEO_OUTPUT_SWITCHING_DMI_VENDOR ;
 int ACPI_VIDEO_OUTPUT_SWITCHING_DMI_VIDEO ;
 int ACPI_VIDEO_OUTPUT_SWITCHING_FORCE_VENDOR ;
 int ACPI_VIDEO_OUTPUT_SWITCHING_FORCE_VIDEO ;
 int acpi_video_caps_checked ;
 int acpi_video_get_capabilities (int *) ;
 int acpi_video_support ;

int acpi_video_display_switch_support(void)
{
 if (!acpi_video_caps_checked)
  acpi_video_get_capabilities(((void*)0));

 if (acpi_video_support & ACPI_VIDEO_OUTPUT_SWITCHING_FORCE_VENDOR)
  return 0;
 else if (acpi_video_support & ACPI_VIDEO_OUTPUT_SWITCHING_FORCE_VIDEO)
  return 1;

 if (acpi_video_support & ACPI_VIDEO_OUTPUT_SWITCHING_DMI_VENDOR)
  return 0;
 else if (acpi_video_support & ACPI_VIDEO_OUTPUT_SWITCHING_DMI_VIDEO)
  return 1;

 return acpi_video_support & ACPI_VIDEO_OUTPUT_SWITCHING;
}
