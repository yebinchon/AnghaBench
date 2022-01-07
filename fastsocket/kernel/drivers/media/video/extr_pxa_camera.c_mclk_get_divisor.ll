; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_mclk_get_divisor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_mclk_get_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pxa_camera_dev = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Limiting master clock to %lu\0A\00", align 1
@PXA_CAMERA_MCLK_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"LCD clock %luHz, target freq %luHz, divisor %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.pxa_camera_dev*)* @mclk_get_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mclk_get_divisor(%struct.platform_device* %0, %struct.pxa_camera_dev* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa_camera_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.pxa_camera_dev* %1, %struct.pxa_camera_dev** %4, align 8
  %9 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @clk_get_rate(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = udiv i64 %22, 4
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = udiv i64 %26, 4
  store i64 %27, i64* %5, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @dev_warn(%struct.device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = mul i64 2, %33
  %35 = add i64 %32, %34
  %36 = sub i64 %35, 1
  %37 = load i64, i64* %5, align 8
  %38 = mul i64 2, %37
  %39 = udiv i64 %36, %38
  %40 = sub i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PXA_CAMERA_MCLK_EN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %31
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = mul nsw i32 2, %51
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %49, %53
  %55 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %31
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
