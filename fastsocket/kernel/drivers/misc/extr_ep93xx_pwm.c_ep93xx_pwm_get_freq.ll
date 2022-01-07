; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_get_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_device = type { i32 }
%struct.ep93xx_pwm = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ep93xx_pwm_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pwm_get_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.ep93xx_pwm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.platform_device* @to_platform_device(%struct.device* %12)
  store %struct.platform_device* %13, %struct.platform_device** %8, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %15 = call %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.ep93xx_pwm* %15, %struct.ep93xx_pwm** %9, align 8
  %16 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %9, align 8
  %17 = call i64 @ep93xx_pwm_is_enabled(%struct.ep93xx_pwm* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %9, align 8
  %21 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @clk_get_rate(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %9, align 8
  %25 = call i32 @ep93xx_pwm_read_tc(%struct.ep93xx_pwm* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %27, %30
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @ep93xx_pwm_is_enabled(%struct.ep93xx_pwm*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ep93xx_pwm_read_tc(%struct.ep93xx_pwm*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
