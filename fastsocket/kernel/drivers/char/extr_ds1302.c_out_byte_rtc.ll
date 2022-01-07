; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ds1302.c_out_byte_rtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ds1302.c_out_byte_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLD_RTCRSTODT = common dso_local global i64 0, align 8
@PLD_RTCWRDATA = common dso_local global i64 0, align 8
@PLD_RTCCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @out_byte_rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_byte_rtc(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i64, i64* @PLD_RTCRSTODT, align 8
  %6 = call i32 @outw(i32 1, i64 %5)
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 %8, 8
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 255
  %12 = or i32 %9, %11
  %13 = load i64, i64* @PLD_RTCWRDATA, align 8
  %14 = call i32 @outw(i32 %12, i64 %13)
  %15 = load i64, i64* @PLD_RTCCR, align 8
  %16 = call i32 @outw(i32 2, i64 %15)
  br label %17

17:                                               ; preds = %21, %2
  %18 = load i64, i64* @PLD_RTCCR, align 8
  %19 = call i64 @inw(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17

22:                                               ; preds = %17
  %23 = load i64, i64* @PLD_RTCRSTODT, align 8
  %24 = call i32 @outw(i32 0, i64 %23)
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
