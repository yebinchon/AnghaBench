; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_video_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_video_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @video_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_video_device*, align 8
  %8 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %10 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %9, i32 0, i32 0
  %11 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  store %struct.acpi_device* %11, %struct.acpi_device** %6, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %13 = call %struct.acpi_video_device* @acpi_driver_data(%struct.acpi_device* %12)
  store %struct.acpi_video_device* %13, %struct.acpi_video_device** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %16 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %14, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %28 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %5, align 8
  %35 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %36 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %26, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.acpi_video_device* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
