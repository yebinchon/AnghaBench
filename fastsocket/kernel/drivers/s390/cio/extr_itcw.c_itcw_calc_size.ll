; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_itcw.c_itcw_calc_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_itcw.c_itcw_calc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCCB_MAX_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @itcw_calc_size(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 4, i64* %7, align 8
  %9 = load i64, i64* @TCCB_MAX_SIZE, align 8
  %10 = add i64 4, %9
  %11 = add i64 %10, 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = add i64 %11, %14
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i64, i64* @TCCB_MAX_SIZE, align 8
  %22 = add i64 4, %21
  %23 = add i64 %22, 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %23, %26
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %20, %3
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 70
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = sub i64 %38, 1
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %39, %41
  %43 = add i64 1, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %35, %30
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = sub i64 %56, 1
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = zext i32 %58 to i64
  %60 = lshr i64 %57, %59
  %61 = add i64 1, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %53, %50
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
