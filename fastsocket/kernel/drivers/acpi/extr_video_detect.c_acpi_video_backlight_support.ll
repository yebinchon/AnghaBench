; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_acpi_video_backlight_support.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_acpi_video_backlight_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_video_caps_checked = common dso_local global i32 0, align 4
@acpi_video_support = common dso_local global i32 0, align 4
@ACPI_VIDEO_BACKLIGHT_FORCE_VENDOR = common dso_local global i32 0, align 4
@ACPI_VIDEO_BACKLIGHT_FORCE_VIDEO = common dso_local global i32 0, align 4
@ACPI_VIDEO_BACKLIGHT_DMI_VENDOR = common dso_local global i32 0, align 4
@ACPI_VIDEO_BACKLIGHT_DMI_VIDEO = common dso_local global i32 0, align 4
@ACPI_VIDEO_BACKLIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_video_backlight_support() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @acpi_video_caps_checked, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @acpi_video_get_capabilities(i32* null)
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @acpi_video_support, align 4
  %8 = load i32, i32* @ACPI_VIDEO_BACKLIGHT_FORCE_VENDOR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %36

12:                                               ; preds = %6
  %13 = load i32, i32* @acpi_video_support, align 4
  %14 = load i32, i32* @ACPI_VIDEO_BACKLIGHT_FORCE_VIDEO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %1, align 4
  br label %36

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @acpi_video_support, align 4
  %21 = load i32, i32* @ACPI_VIDEO_BACKLIGHT_DMI_VENDOR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %36

25:                                               ; preds = %19
  %26 = load i32, i32* @acpi_video_support, align 4
  %27 = load i32, i32* @ACPI_VIDEO_BACKLIGHT_DMI_VIDEO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  br label %36

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @acpi_video_support, align 4
  %34 = load i32, i32* @ACPI_VIDEO_BACKLIGHT, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %30, %24, %17, %11
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @acpi_video_get_capabilities(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
