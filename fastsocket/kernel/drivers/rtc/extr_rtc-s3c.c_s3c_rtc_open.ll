; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32 }

@s3c_rtc_alarmno = common dso_local global i32 0, align 4
@s3c_rtc_alarmirq = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"s3c2410-rtc alarm\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IRQ%d error %d\0A\00", align 1
@s3c_rtc_tickno = common dso_local global i32 0, align 4
@s3c_rtc_tickirq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"s3c2410-rtc tick\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @s3c_rtc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_open(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.platform_device* @to_platform_device(%struct.device* %7)
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call %struct.rtc_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.rtc_device* %10, %struct.rtc_device** %5, align 8
  %11 = load i32, i32* @s3c_rtc_alarmno, align 4
  %12 = load i32, i32* @s3c_rtc_alarmirq, align 4
  %13 = load i32, i32* @IRQF_DISABLED, align 4
  %14 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %15 = call i32 @request_irq(i32 %11, i32 %12, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.rtc_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* @s3c_rtc_alarmno, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32, i32* @s3c_rtc_tickno, align 4
  %26 = load i32, i32* @s3c_rtc_tickirq, align 4
  %27 = load i32, i32* @IRQF_DISABLED, align 4
  %28 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %29 = call i32 @request_irq(i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.rtc_device* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* @s3c_rtc_tickno, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @s3c_rtc_alarmno, align 4
  %41 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.rtc_device* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %37, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rtc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.rtc_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
