; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-au1xxx.c_au1xtoy_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-au1xxx.c_au1xtoy_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@SYS_TOYWRITE = common dso_local global i32 0, align 4
@SYS_COUNTER_CNTRL = common dso_local global i32 0, align 4
@SYS_CNTRL_C0S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @au1xtoy_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xtoy_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %7 = call i32 @rtc_tm_to_time(%struct.rtc_time* %6, i64* %5)
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @SYS_TOYWRITE, align 4
  %10 = call i32 @au_writel(i64 %8, i32 %9)
  %11 = call i32 (...) @au_sync()
  br label %12

12:                                               ; preds = %18, %2
  %13 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %14 = call i32 @au_readl(i32 %13)
  %15 = load i32, i32* @SYS_CNTRL_C0S, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @msleep(i32 1)
  br label %12

20:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
