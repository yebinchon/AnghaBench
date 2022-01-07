; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa_rtc = type { i32, i32 }

@RTSR = common dso_local global i32 0, align 4
@RTSR_RDALE1 = common dso_local global i32 0, align 4
@RTSR_PIALE = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@RTSR_RDAL1 = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@RTSR_HZ = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@RTSR_PIAL = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i64 0, align 8
@RTSR_TRIG_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa_rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.pxa_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.platform_device* @to_platform_device(i8* %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = call %struct.pxa_rtc* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.pxa_rtc* %12, %struct.pxa_rtc** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.pxa_rtc*, %struct.pxa_rtc** %6, align 8
  %14 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.pxa_rtc*, %struct.pxa_rtc** %6, align 8
  %17 = load i32, i32* @RTSR, align 4
  %18 = call i32 @rtc_readl(%struct.pxa_rtc* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pxa_rtc*, %struct.pxa_rtc** %6, align 8
  %20 = load i32, i32* @RTSR, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @rtc_writel(%struct.pxa_rtc* %19, i32 %20, i32 %21)
  %23 = load %struct.pxa_rtc*, %struct.pxa_rtc** %6, align 8
  %24 = load i32, i32* @RTSR_RDALE1, align 4
  %25 = load i32, i32* @RTSR_PIALE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RTSR_HZE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @rtsr_clear_bits(%struct.pxa_rtc* %23, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RTSR_RDAL1, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @RTSR_RDALE1, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RTSR_RDAL1, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* @RTC_AF, align 8
  %46 = load i64, i64* @RTC_IRQF, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* %8, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RTSR_HZ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i64, i64* @RTC_UF, align 8
  %57 = load i64, i64* @RTC_IRQF, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* %8, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @RTSR_PIAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i64, i64* @RTC_PF, align 8
  %68 = load i64, i64* @RTC_IRQF, align 8
  %69 = or i64 %67, %68
  %70 = load i64, i64* %8, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.pxa_rtc*, %struct.pxa_rtc** %6, align 8
  %74 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @rtc_update_irq(i32 %75, i32 1, i64 %76)
  %78 = load %struct.pxa_rtc*, %struct.pxa_rtc** %6, align 8
  %79 = load i32, i32* @RTSR, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @RTSR_TRIG_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @rtc_writel(%struct.pxa_rtc* %78, i32 %79, i32 %83)
  %85 = load %struct.pxa_rtc*, %struct.pxa_rtc** %6, align 8
  %86 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %88
}

declare dso_local %struct.platform_device* @to_platform_device(i8*) #1

declare dso_local %struct.pxa_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtc_readl(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.pxa_rtc*, i32, i32) #1

declare dso_local i32 @rtsr_clear_bits(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
