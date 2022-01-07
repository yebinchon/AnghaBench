; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_sensor_update_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_sensor_update_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9968cf_device = type { i32, i32, i32, i32, i32, i32 }

@OVCAMCHIP_CID_AUTOBRIGHT = common dso_local global i32 0, align 4
@OVCAMCHIP_CID_AUTOEXP = common dso_local global i32 0, align 4
@OVCAMCHIP_CID_BANDFILT = common dso_local global i32 0, align 4
@OVCAMCHIP_CID_FREQ = common dso_local global i32 0, align 4
@OVCAMCHIP_CID_BACKLIGHT = common dso_local global i32 0, align 4
@OVCAMCHIP_CID_MIRROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9968cf_device*)* @w9968cf_sensor_update_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9968cf_sensor_update_settings(%struct.w9968cf_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w9968cf_device*, align 8
  %4 = alloca i32, align 4
  store %struct.w9968cf_device* %0, %struct.w9968cf_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %6 = load i32, i32* @OVCAMCHIP_CID_AUTOBRIGHT, align 4
  %7 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %8 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @w9968cf_sensor_set_control(%struct.w9968cf_device* %5, i32 %6, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %17 = load i32, i32* @OVCAMCHIP_CID_AUTOEXP, align 4
  %18 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %19 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @w9968cf_sensor_set_control(%struct.w9968cf_device* %16, i32 %17, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %15
  %27 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %28 = load i32, i32* @OVCAMCHIP_CID_BANDFILT, align 4
  %29 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %30 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @w9968cf_sensor_set_control(%struct.w9968cf_device* %27, i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %26
  %38 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %39 = load i32, i32* @OVCAMCHIP_CID_FREQ, align 4
  %40 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %41 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @w9968cf_sensor_set_control(%struct.w9968cf_device* %38, i32 %39, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %71

48:                                               ; preds = %37
  %49 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %50 = load i32, i32* @OVCAMCHIP_CID_BACKLIGHT, align 4
  %51 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %52 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @w9968cf_sensor_set_control(%struct.w9968cf_device* %49, i32 %50, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %48
  %60 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %61 = load i32, i32* @OVCAMCHIP_CID_MIRROR, align 4
  %62 = load %struct.w9968cf_device*, %struct.w9968cf_device** %3, align 8
  %63 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @w9968cf_sensor_set_control(%struct.w9968cf_device* %60, i32 %61, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68, %57, %46, %35, %24, %13
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @w9968cf_sensor_set_control(%struct.w9968cf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
