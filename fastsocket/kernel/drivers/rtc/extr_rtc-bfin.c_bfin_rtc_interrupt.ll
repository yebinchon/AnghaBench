; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_bfin_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bfin_rtc = type { i32 }

@RTC_ISTAT_WRITE_COMPLETE = common dso_local global i32 0, align 4
@bfin_write_complete = common dso_local global i32 0, align 4
@RTC_ISTAT_ALARM = common dso_local global i32 0, align 4
@RTC_ISTAT_ALARM_DAY = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_ISTAT_SEC = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bfin_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.bfin_rtc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.device*
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.bfin_rtc* @dev_get_drvdata(%struct.device* %14)
  store %struct.bfin_rtc* %15, %struct.bfin_rtc** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i32 @dev_dbg_stamp(%struct.device* %16)
  %18 = call i32 (...) @bfin_read_RTC_ISTAT()
  store i32 %18, i32* %10, align 4
  %19 = call i32 (...) @bfin_read_RTC_ICTL()
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @RTC_ISTAT_WRITE_COMPLETE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @RTC_ISTAT_WRITE_COMPLETE, align 4
  %26 = call i32 @bfin_write_RTC_ISTAT(i32 %25)
  store i32 1, i32* %9, align 4
  %27 = call i32 @complete(i32* @bfin_write_complete)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @RTC_ISTAT_ALARM, align 4
  %31 = load i32, i32* @RTC_ISTAT_ALARM_DAY, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @RTC_ISTAT_ALARM, align 4
  %38 = load i32, i32* @RTC_ISTAT_ALARM_DAY, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i32, i32* @RTC_ISTAT_ALARM, align 4
  %44 = load i32, i32* @RTC_ISTAT_ALARM_DAY, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @bfin_write_RTC_ISTAT(i32 %45)
  %47 = load i64, i64* @RTC_AF, align 8
  %48 = load i64, i64* @RTC_IRQF, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %42, %35
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @RTC_ISTAT_SEC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @RTC_ISTAT_SEC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* @RTC_ISTAT_SEC, align 4
  %65 = call i32 @bfin_write_RTC_ISTAT(i32 %64)
  %66 = load i64, i64* @RTC_UF, align 8
  %67 = load i64, i64* @RTC_IRQF, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* %8, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %63, %58
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.bfin_rtc*, %struct.bfin_rtc** %7, align 8
  %77 = getelementptr inbounds %struct.bfin_rtc, %struct.bfin_rtc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @rtc_update_irq(i32 %78, i32 1, i64 %79)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %81
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @IRQ_NONE, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.bfin_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg_stamp(%struct.device*) #1

declare dso_local i32 @bfin_read_RTC_ISTAT(...) #1

declare dso_local i32 @bfin_read_RTC_ICTL(...) #1

declare dso_local i32 @bfin_write_RTC_ISTAT(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
