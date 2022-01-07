; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_video_get_cur_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_video_get_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @video_get_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_get_cur_state(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_video_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %10, i32 0, i32 0
  %12 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  store %struct.acpi_device* %12, %struct.acpi_device** %6, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %14 = call %struct.acpi_video_device* @acpi_driver_data(%struct.acpi_device* %13)
  store %struct.acpi_video_device* %14, %struct.acpi_video_device** %7, align 8
  %15 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %16 = call i64 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device* %15, i64* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %25 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %22
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %33 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %31, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %44 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %60

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %42, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.acpi_video_device* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i64 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
