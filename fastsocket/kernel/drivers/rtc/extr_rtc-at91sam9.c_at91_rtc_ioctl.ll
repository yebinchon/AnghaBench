; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sam9_rtc = type { i32 }

@MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ioctl: cmd=%08x, arg=%08lx, mr %08x\0A\00", align 1
@AT91_RTT_ALMIEN = common dso_local global i32 0, align 4
@AT91_RTT_RTTINCIEN = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @at91_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sam9_rtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sam9_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.sam9_rtc* %11, %struct.sam9_rtc** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sam9_rtc*, %struct.sam9_rtc** %7, align 8
  %13 = load i32, i32* @MR, align 4
  %14 = call i32 @rtt_readl(%struct.sam9_rtc* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %51 [
    i32 131, label %21
    i32 130, label %29
    i32 129, label %36
    i32 128, label %44
  ]

21:                                               ; preds = %3
  %22 = load %struct.sam9_rtc*, %struct.sam9_rtc** %7, align 8
  %23 = load i32, i32* @MR, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @rtt_writel(%struct.sam9_rtc* %22, i32 %23, i32 %27)
  br label %54

29:                                               ; preds = %3
  %30 = load %struct.sam9_rtc*, %struct.sam9_rtc** %7, align 8
  %31 = load i32, i32* @MR, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @rtt_writel(%struct.sam9_rtc* %30, i32 %31, i32 %34)
  br label %54

36:                                               ; preds = %3
  %37 = load %struct.sam9_rtc*, %struct.sam9_rtc** %7, align 8
  %38 = load i32, i32* @MR, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @AT91_RTT_RTTINCIEN, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @rtt_writel(%struct.sam9_rtc* %37, i32 %38, i32 %42)
  br label %54

44:                                               ; preds = %3
  %45 = load %struct.sam9_rtc*, %struct.sam9_rtc** %7, align 8
  %46 = load i32, i32* @MR, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AT91_RTT_RTTINCIEN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @rtt_writel(%struct.sam9_rtc* %45, i32 %46, i32 %49)
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @ENOIOCTLCMD, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %44, %36, %29, %21
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.sam9_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i32) #1

declare dso_local i32 @rtt_writel(%struct.sam9_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
