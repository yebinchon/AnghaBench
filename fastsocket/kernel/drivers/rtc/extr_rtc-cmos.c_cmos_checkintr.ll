; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_checkintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_checkintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmos_rtc = type { i32 }

@RTC_INTR_FLAGS = common dso_local global i32 0, align 4
@RTC_IRQMASK = common dso_local global i8 0, align 1
@RTC_IRQF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmos_rtc*, i8)* @cmos_checkintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmos_checkintr(%struct.cmos_rtc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.cmos_rtc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.cmos_rtc* %0, %struct.cmos_rtc** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* @RTC_INTR_FLAGS, align 4
  %7 = call zeroext i8 @CMOS_READ(i32 %6)
  store i8 %7, i8* %5, align 1
  %8 = call i64 (...) @is_hpet_enabled()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @RTC_IRQMASK, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = load i8, i8* @RTC_IRQF, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %5, align 1
  %25 = call i64 @is_intr(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %29 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8, i8* %5, align 1
  %32 = call i32 @rtc_update_irq(i32 %30, i32 1, i8 zeroext %31)
  br label %33

33:                                               ; preds = %10, %27, %11
  ret void
}

declare dso_local zeroext i8 @CMOS_READ(i32) #1

declare dso_local i64 @is_hpet_enabled(...) #1

declare dso_local i64 @is_intr(i8 zeroext) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
