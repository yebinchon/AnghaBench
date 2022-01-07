; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx25/extr_clock.c_get_rate_per.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx25/extr_clock.c_get_rate_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRM_BASE = common dso_local global i64 0, align 8
@CCM_PCDR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_rate_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_per(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 3
  %9 = mul nsw i32 %8, 8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, -4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* @CRM_BASE, align 8
  %15 = load i64, i64* @CCM_PCDR0, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = ashr i32 %19, %21
  %23 = and i32 %22, 63
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* @CRM_BASE, align 8
  %26 = add nsw i64 %25, 100
  %27 = call i32 @readl(i64 %26)
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = call i64 (...) @get_rate_upll()
  store i64 %33, i64* %6, align 8
  br label %36

34:                                               ; preds = %1
  %35 = call i64 @get_rate_ipg(i32* null)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  %40 = udiv i64 %37, %39
  ret i64 %40
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @get_rate_upll(...) #1

declare dso_local i64 @get_rate_ipg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
