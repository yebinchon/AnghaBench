; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_mult64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_mult64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*)* @mult64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mult64(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = lshr i64 %15, 32
  %17 = load i64, i64* %6, align 8
  %18 = lshr i64 %17, 32
  %19 = mul i64 %16, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, 4294967295
  %22 = load i64, i64* %6, align 8
  %23 = lshr i64 %22, 32
  %24 = mul i64 %21, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %5, align 8
  %26 = lshr i64 %25, 32
  %27 = load i64, i64* %6, align 8
  %28 = and i64 %27, 4294967295
  %29 = mul i64 %26, %28
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %30, 4294967295
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, 4294967295
  %34 = mul i64 %31, %33
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %14, align 8
  store i64 0, i64* %13, align 8
  %36 = load i64, i64* %10, align 8
  %37 = shl i64 %36, 32
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %43, %4
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %11, align 8
  %49 = shl i64 %48, 32
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %10, align 8
  %61 = lshr i64 %60, 32
  %62 = load i64, i64* %11, align 8
  %63 = lshr i64 %62, 32
  %64 = add i64 %61, %63
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64*, i64** %8, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
