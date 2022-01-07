; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-test.c_test_irq_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-test.c_test_irq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"tick\00", align 1
@RTC_PF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@RTC_AF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@RTC_UF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @test_irq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_irq_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.rtc_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.platform_device* @to_platform_device(%struct.device* %12)
  store %struct.platform_device* %13, %struct.platform_device** %10, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %15 = call %struct.rtc_device* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.rtc_device* %15, %struct.rtc_device** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.rtc_device*, %struct.rtc_device** %11, align 8
  %23 = load i32, i32* @RTC_PF, align 4
  %24 = load i32, i32* @RTC_IRQF, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @rtc_update_irq(%struct.rtc_device* %22, i32 1, i32 %25)
  br label %52

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.rtc_device*, %struct.rtc_device** %11, align 8
  %33 = load i32, i32* @RTC_AF, align 4
  %34 = load i32, i32* @RTC_IRQF, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @rtc_update_irq(%struct.rtc_device* %32, i32 1, i32 %35)
  br label %51

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.rtc_device*, %struct.rtc_device** %11, align 8
  %43 = load i32, i32* @RTC_UF, align 4
  %44 = load i32, i32* @RTC_IRQF, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @rtc_update_irq(%struct.rtc_device* %42, i32 1, i32 %45)
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rtc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
