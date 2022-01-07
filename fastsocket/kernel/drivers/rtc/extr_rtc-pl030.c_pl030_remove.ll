; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl030.c_pl030_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl030.c_pl030_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32* }
%struct.pl030_rtc = type { i64, i32 }

@RTC_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @pl030_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl030_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.pl030_rtc*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %4 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %5 = call %struct.pl030_rtc* @amba_get_drvdata(%struct.amba_device* %4)
  store %struct.pl030_rtc* %5, %struct.pl030_rtc** %3, align 8
  %6 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %7 = call i32 @amba_set_drvdata(%struct.amba_device* %6, i32* null)
  %8 = load %struct.pl030_rtc*, %struct.pl030_rtc** %3, align 8
  %9 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RTC_CR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 0, i64 %12)
  %14 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %15 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pl030_rtc*, %struct.pl030_rtc** %3, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.pl030_rtc* %19)
  %21 = load %struct.pl030_rtc*, %struct.pl030_rtc** %3, align 8
  %22 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @rtc_device_unregister(i32 %23)
  %25 = load %struct.pl030_rtc*, %struct.pl030_rtc** %3, align 8
  %26 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @iounmap(i64 %27)
  %29 = load %struct.pl030_rtc*, %struct.pl030_rtc** %3, align 8
  %30 = call i32 @kfree(%struct.pl030_rtc* %29)
  %31 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %32 = call i32 @amba_release_regions(%struct.amba_device* %31)
  ret i32 0
}

declare dso_local %struct.pl030_rtc* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.pl030_rtc*) #1

declare dso_local i32 @rtc_device_unregister(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.pl030_rtc*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
