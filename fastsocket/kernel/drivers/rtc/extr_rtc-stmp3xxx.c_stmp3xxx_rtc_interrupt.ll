; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp3xxx_rtc_data = type { i32, i32, i64 }

@HW_RTC_CTRL = common dso_local global i64 0, align 8
@BM_RTC_CTRL_ALARM_IRQ = common dso_local global i32 0, align 4
@BM_RTC_CTRL_ONEMSEC_IRQ = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stmp3xxx_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stmp3xxx_rtc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.stmp3xxx_rtc_data* @dev_get_drvdata(i8* %8)
  store %struct.stmp3xxx_rtc_data* %9, %struct.stmp3xxx_rtc_data** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %11 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HW_RTC_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @__raw_readl(i64 %14)
  %16 = load i32, i32* @BM_RTC_CTRL_ALARM_IRQ, align 4
  %17 = load i32, i32* @BM_RTC_CTRL_ONEMSEC_IRQ, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BM_RTC_CTRL_ALARM_IRQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @BM_RTC_CTRL_ALARM_IRQ, align 4
  %26 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %27 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HW_RTC_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @stmp3xxx_clearl(i32 %25, i64 %30)
  %32 = load i32, i32* @RTC_AF, align 4
  %33 = load i32, i32* @RTC_IRQF, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %24, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @BM_RTC_CTRL_ONEMSEC_IRQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load i32, i32* @BM_RTC_CTRL_ONEMSEC_IRQ, align 4
  %44 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %45 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HW_RTC_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @stmp3xxx_clearl(i32 %43, i64 %48)
  %50 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %51 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = srem i32 %53, 1000
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load i32, i32* @RTC_UF, align 4
  %58 = load i32, i32* @RTC_IRQF, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %63 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %42
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %70 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @rtc_update_irq(i32 %71, i32 1, i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %75
}

declare dso_local %struct.stmp3xxx_rtc_data* @dev_get_drvdata(i8*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
