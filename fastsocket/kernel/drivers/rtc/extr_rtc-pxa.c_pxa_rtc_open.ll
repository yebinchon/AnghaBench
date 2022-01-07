; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa_rtc = type { i32, i32 }

@pxa_rtc_irq = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rtc 1Hz\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't get irq %i, err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rtc Alrm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pxa_rtc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_rtc_open(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pxa_rtc*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pxa_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.pxa_rtc* %7, %struct.pxa_rtc** %4, align 8
  %8 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %9 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @pxa_rtc_irq, align 4
  %12 = load i32, i32* @IRQF_DISABLED, align 4
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %20 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %26 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @pxa_rtc_irq, align 4
  %29 = load i32, i32* @IRQF_DISABLED, align 4
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @request_irq(i32 %27, i32 %28, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %37 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %50

42:                                               ; preds = %34
  %43 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %44 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 @free_irq(i32 %45, %struct.device* %46)
  br label %48

48:                                               ; preds = %42, %17
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.pxa_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
