; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_add(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @extractFloat64Sign(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @extractFloat64Sign(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @addFloat64Sigs(i32 %16, i32 %17, i64 %18)
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @subFloat64Sigs(i32 %21, i32 %22, i64 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @extractFloat64Sign(i32) #1

declare dso_local i32 @addFloat64Sigs(i32, i32, i64) #1

declare dso_local i32 @subFloat64Sigs(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
