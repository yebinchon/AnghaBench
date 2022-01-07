; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_device = type { i32 }
%struct.ep93xx_pwm = type { i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@EP93XX_PWM_MAX_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ep93xx_pwm_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ep93xx_pwm_set_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.ep93xx_pwm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %10, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %19 = call %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device* %18)
  store %struct.ep93xx_pwm* %19, %struct.ep93xx_pwm** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strict_strtol(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %100

27:                                               ; preds = %4
  %28 = load i64, i64* %12, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %32 = call i32 @ep93xx_pwm_disable(%struct.ep93xx_pwm* %31)
  br label %98

33:                                               ; preds = %27
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %36 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @clk_get_rate(i32 %37)
  %39 = sdiv i64 %38, 2
  %40 = icmp sle i64 %34, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %33
  %42 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %43 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @clk_get_rate(i32 %44)
  %46 = load i64, i64* %12, align 8
  %47 = sdiv i64 %45, %46
  %48 = sub nsw i64 %47, 1
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @EP93XX_PWM_MAX_COUNT, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i64, i64* @EP93XX_PWM_MAX_COUNT, align 8
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i64, i64* %12, align 8
  %56 = icmp slt i64 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i64 1, i64* %12, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %60 = call i64 @ep93xx_pwm_read_tc(%struct.ep93xx_pwm* %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %61, 1
  %63 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %64 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = mul nsw i64 %62, %65
  %67 = sdiv i64 %66, 100
  %68 = sub nsw i64 %67, 1
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @ep93xx_pwm_write_tc(%struct.ep93xx_pwm* %73, i64 %74)
  %76 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @ep93xx_pwm_write_dc(%struct.ep93xx_pwm* %76, i64 %77)
  br label %86

79:                                               ; preds = %58
  %80 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @ep93xx_pwm_write_dc(%struct.ep93xx_pwm* %80, i64 %81)
  %83 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @ep93xx_pwm_write_tc(%struct.ep93xx_pwm* %83, i64 %84)
  br label %86

86:                                               ; preds = %79, %72
  %87 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %88 = call i32 @ep93xx_pwm_is_enabled(%struct.ep93xx_pwm* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %92 = call i32 @ep93xx_pwm_enable(%struct.ep93xx_pwm* %91)
  br label %93

93:                                               ; preds = %90, %86
  br label %97

94:                                               ; preds = %33
  %95 = load i64, i64* @EINVAL, align 8
  %96 = sub i64 0, %95
  store i64 %96, i64* %5, align 8
  br label %100

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %30
  %99 = load i64, i64* %9, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %98, %94, %24
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @ep93xx_pwm_disable(%struct.ep93xx_pwm*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @ep93xx_pwm_read_tc(%struct.ep93xx_pwm*) #1

declare dso_local i32 @ep93xx_pwm_write_tc(%struct.ep93xx_pwm*, i64) #1

declare dso_local i32 @ep93xx_pwm_write_dc(%struct.ep93xx_pwm*, i64) #1

declare dso_local i32 @ep93xx_pwm_is_enabled(%struct.ep93xx_pwm*) #1

declare dso_local i32 @ep93xx_pwm_enable(%struct.ep93xx_pwm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
