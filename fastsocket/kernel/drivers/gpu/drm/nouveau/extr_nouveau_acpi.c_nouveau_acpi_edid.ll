; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_acpi.c_nouveau_acpi_edid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_acpi.c_nouveau_acpi_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector = type { i32 }
%struct.acpi_device = type { i32 }

@ACPI_VIDEO_DISPLAY_LCD = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nouveau_acpi_edid(%struct.drm_device* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %2, %2
  %15 = load i32, i32* @ACPI_VIDEO_DISPLAY_LCD, align 4
  store i32 %15, i32* %8, align 4
  br label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %44

17:                                               ; preds = %14
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @DEVICE_ACPI_HANDLE(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %44

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @acpi_bus_get_device(i32 %27, %struct.acpi_device** %6)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %44

32:                                               ; preds = %26
  %33 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @acpi_video_get_edid(%struct.acpi_device* %33, i32 %34, i32 -1, i8** %10)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %44

39:                                               ; preds = %32
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @EDID_LENGTH, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmemdup(i8* %40, i32 %41, i32 %42)
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %39, %38, %31, %25, %16
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @DEVICE_ACPI_HANDLE(i32*) #1

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @acpi_video_get_edid(%struct.acpi_device*, i32, i32, i8**) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
