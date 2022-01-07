; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1302.c_ds1302_writebyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1302.c_ds1302_writebyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_RESET = common dso_local global i32 0, align 4
@RTC_IODATA = common dso_local global i32 0, align 4
@RTC_SCLK = common dso_local global i32 0, align 4
@RTC_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ds1302_writebyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1302_writebyte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @get_dp()
  %6 = load i32, i32* @RTC_RESET, align 4
  %7 = load i32, i32* @RTC_IODATA, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @RTC_SCLK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %5, %11
  %13 = call i32 @set_dp(i32 %12)
  %14 = call i32 (...) @get_dp()
  %15 = load i32, i32* @RTC_RESET, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @set_dp(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 63
  %20 = shl i32 %19, 1
  %21 = load i32, i32* @RTC_CMD_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ds1302_sendbits(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ds1302_sendbits(i32 %24)
  %26 = call i32 (...) @get_dp()
  %27 = load i32, i32* @RTC_RESET, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @set_dp(i32 %29)
  ret void
}

declare dso_local i32 @set_dp(i32) #1

declare dso_local i32 @get_dp(...) #1

declare dso_local i32 @ds1302_sendbits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
