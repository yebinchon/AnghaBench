; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_patch.c_ia64_patch_imm64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_patch.c_ia64_patch_imm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_patch_imm64(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -16
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = add i64 %7, 2
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, -9223372036854775808
  %11 = lshr i64 %10, 27
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 2097152
  %14 = shl i64 %13, 0
  %15 = or i64 %11, %14
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, 2031616
  %18 = shl i64 %17, 6
  %19 = or i64 %15, %18
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, 65408
  %22 = shl i64 %21, 20
  %23 = or i64 %19, %22
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, 127
  %26 = shl i64 %25, 13
  %27 = or i64 %23, %26
  %28 = call i32 @ia64_patch(i64 %8, i32 -1056768, i64 %27)
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  %31 = load i64, i64* %4, align 8
  %32 = lshr i64 %31, 22
  %33 = call i32 @ia64_patch(i64 %30, i32 -1, i64 %32)
  ret void
}

declare dso_local i32 @ia64_patch(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
