; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_delay.c___udelay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_delay.c___udelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MN10300_TSCCLK = common dso_local global i32 0, align 4
@TMTSCBC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__udelay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @MN10300_TSCCLK, align 4
  %7 = call i64 @__muldiv64u(i64 %5, i32 %6, i32 1000000)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @TMTSCBC, align 8
  %9 = load i64, i64* %4, align 8
  %10 = sub nsw i64 %8, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %13, %1
  %12 = load i64, i64* @TMTSCBC, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %11
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %11, label %17

17:                                               ; preds = %13
  ret void
}

declare dso_local i64 @__muldiv64u(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
