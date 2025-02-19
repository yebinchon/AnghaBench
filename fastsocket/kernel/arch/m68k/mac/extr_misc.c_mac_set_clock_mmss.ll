; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_mac_set_clock_mmss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_mac_set_clock_mmss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_set_clock_mmss(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rtc_time, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 @mac_hwclk(i32 0, %struct.rtc_time* %3)
  %5 = load i64, i64* %2, align 8
  %6 = urem i64 %5, 60
  %7 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load i64, i64* %2, align 8
  %9 = udiv i64 %8, 60
  %10 = urem i64 %9, 60
  %11 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 1
  store i64 %10, i64* %11, align 8
  %12 = call i32 @mac_hwclk(i32 1, %struct.rtc_time* %3)
  ret i32 0
}

declare dso_local i32 @mac_hwclk(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
