; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_set_duty_percent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_set_duty_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_device = type { i32 }
%struct.ep93xx_pwm = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ep93xx_pwm_set_duty_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ep93xx_pwm_set_duty_percent(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.ep93xx_pwm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.platform_device* @to_platform_device(%struct.device* %15)
  store %struct.platform_device* %16, %struct.platform_device** %10, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %18 = call %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device* %17)
  store %struct.ep93xx_pwm* %18, %struct.ep93xx_pwm** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strict_strtol(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %52

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i64, i64* %12, align 8
  %31 = icmp slt i64 %30, 100
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %34 = call i32 @ep93xx_pwm_read_tc(%struct.ep93xx_pwm* %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %12, align 8
  %40 = mul nsw i64 %38, %39
  %41 = sdiv i64 %40, 100
  %42 = sub nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ep93xx_pwm_write_dc(%struct.ep93xx_pwm* %35, i32 %43)
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %47 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %5, align 8
  br label %52

49:                                               ; preds = %29, %26
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub i64 0, %50
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %49, %32, %23
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @ep93xx_pwm_read_tc(%struct.ep93xx_pwm*) #1

declare dso_local i32 @ep93xx_pwm_write_dc(%struct.ep93xx_pwm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
