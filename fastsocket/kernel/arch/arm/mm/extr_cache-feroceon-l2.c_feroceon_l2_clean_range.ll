; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-feroceon-l2.c_feroceon_l2_clean_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-feroceon-l2.c_feroceon_l2_clean_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l2_wt_override = common dso_local global i32 0, align 4
@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @feroceon_l2_clean_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feroceon_l2_clean_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @l2_wt_override, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = xor i32 %10, -1
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = sub i64 %18, 1
  %20 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = xor i32 %21, -1
  %23 = sext i32 %22 to i64
  %24 = and i64 %19, %23
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %29, %8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @calc_range_end(i64 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = call i32 @l2_clean_pa_range(i64 %33, i64 %37)
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %3, align 8
  br label %25

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = call i32 (...) @dsb()
  ret void
}

declare dso_local i64 @calc_range_end(i64, i64) #1

declare dso_local i32 @l2_clean_pa_range(i64, i64) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
