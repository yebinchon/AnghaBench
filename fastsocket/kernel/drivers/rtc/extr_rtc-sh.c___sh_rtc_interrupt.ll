; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c___sh_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c___sh_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_rtc = type { i32, i32, i64 }

@RCR1 = common dso_local global i64 0, align 8
@RCR1_CF = common dso_local global i32 0, align 4
@PF_OXS = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_rtc*)* @__sh_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sh_rtc_interrupt(%struct.sh_rtc* %0) #0 {
  %2 = alloca %struct.sh_rtc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sh_rtc* %0, %struct.sh_rtc** %2, align 8
  %5 = load %struct.sh_rtc*, %struct.sh_rtc** %2, align 8
  %6 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RCR1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readb(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RCR1_CF, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @RCR1_CF, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.sh_rtc*, %struct.sh_rtc** %2, align 8
  %20 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RCR1, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i32 %18, i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %1
  %28 = load %struct.sh_rtc*, %struct.sh_rtc** %2, align 8
  %29 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PF_OXS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.sh_rtc*, %struct.sh_rtc** %2, align 8
  %36 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RTC_UF, align 4
  %39 = load i32, i32* @RTC_IRQF, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @rtc_update_irq(i32 %37, i32 1, i32 %40)
  br label %42

42:                                               ; preds = %34, %27, %1
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
