; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_divide_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_divide_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @divide_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @divide_ns(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @do_div(i64 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %17 [
    i32 129, label %18
    i32 130, label %28
    i32 128, label %29
  ]

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %3, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = udiv i32 %20, 2
  %22 = add i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = udiv i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %39

28:                                               ; preds = %3
  br label %39

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %30, %31
  %33 = sub i32 %32, 1
  %34 = load i32, i32* %5, align 4
  %35 = udiv i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %29, %28, %18
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @UINT_MAX, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @UINT_MAX, align 8
  br label %49

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i64 [ %44, %43 ], [ %48, %45 ]
  %51 = trunc i64 %50 to i32
  ret i32 %51
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
