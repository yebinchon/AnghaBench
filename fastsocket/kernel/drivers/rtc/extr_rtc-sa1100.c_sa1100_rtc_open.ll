; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IRQ_RTC1Hz = common dso_local global i32 0, align 4
@sa1100_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rtc 1Hz\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"IRQ %d already in use.\0A\00", align 1
@IRQ_RTCAlrm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rtc Alrm\00", align 1
@IRQ_OST1 = common dso_local global i32 0, align 4
@timer1_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"rtc timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sa1100_rtc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_open(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @IRQ_RTC1Hz, align 4
  %6 = load i32, i32* @sa1100_rtc_interrupt, align 4
  %7 = load i32, i32* @IRQF_DISABLED, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @request_irq(i32 %5, i32 %6, i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* @IRQ_RTC1Hz, align 4
  %15 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %49

16:                                               ; preds = %1
  %17 = load i32, i32* @IRQ_RTCAlrm, align 4
  %18 = load i32, i32* @sa1100_rtc_interrupt, align 4
  %19 = load i32, i32* @IRQF_DISABLED, align 4
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @request_irq(i32 %17, i32 %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load i32, i32* @IRQ_RTCAlrm, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %45

28:                                               ; preds = %16
  %29 = load i32, i32* @IRQ_OST1, align 4
  %30 = load i32, i32* @timer1_interrupt, align 4
  %31 = load i32, i32* @IRQF_DISABLED, align 4
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @request_irq(i32 %29, i32 %30, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.device* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i32, i32* @IRQ_OST1, align 4
  %39 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %41

40:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %51

41:                                               ; preds = %36
  %42 = load i32, i32* @IRQ_RTCAlrm, align 4
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 @free_irq(i32 %42, %struct.device* %43)
  br label %45

45:                                               ; preds = %41, %24
  %46 = load i32, i32* @IRQ_RTC1Hz, align 4
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 @free_irq(i32 %46, %struct.device* %47)
  br label %49

49:                                               ; preds = %45, %12
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
