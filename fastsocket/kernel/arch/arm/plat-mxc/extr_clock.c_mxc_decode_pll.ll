; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c_mxc_decode_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c_mxc_decode_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mxc_decode_pll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = lshr i32 %11, 10
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1023
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %3, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 1023
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %3, align 4
  %20 = lshr i32 %19, 26
  %21 = and i32 %20, 15
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ule i32 %22, 5
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 5, %24 ], [ %26, %25 ]
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %6, align 4
  %30 = call i32 (...) @cpu_is_mx1()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = call i32 (...) @cpu_is_mx21()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp uge i32 %36, 512
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 1024, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %27
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  %46 = load i32, i32* %4, align 4
  %47 = udiv i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %49, %51
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  %56 = call i32 @do_div(i64 %53, i32 %55)
  %57 = call i32 (...) @cpu_is_mx1()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %41
  %60 = call i32 (...) @cpu_is_mx21()
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp uge i32 %63, 512
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = sub nsw i64 0, %66
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %65, %62, %59, %41
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %72, %73
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i32 @cpu_is_mx1(...) #1

declare dso_local i32 @cpu_is_mx21(...) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
