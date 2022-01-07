; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_set_invert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_set_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_device = type { i32 }
%struct.ep93xx_pwm = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ep93xx_pwm_set_invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ep93xx_pwm_set_invert(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.ep93xx_pwm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %10, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %17 = call %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device* %16)
  store %struct.ep93xx_pwm* %17, %struct.ep93xx_pwm** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strict_strtol(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %43

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %30 = call i32 @ep93xx_pwm_normal(%struct.ep93xx_pwm* %29)
  br label %41

31:                                               ; preds = %25
  %32 = load i64, i64* %12, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %11, align 8
  %36 = call i32 @ep93xx_pwm_invert(%struct.ep93xx_pwm* %35)
  br label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %43

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %41, %37, %22
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.ep93xx_pwm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @ep93xx_pwm_normal(%struct.ep93xx_pwm*) #1

declare dso_local i32 @ep93xx_pwm_invert(%struct.ep93xx_pwm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
