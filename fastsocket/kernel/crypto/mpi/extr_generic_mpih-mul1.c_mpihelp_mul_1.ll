; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-mul1.c_mpihelp_mul_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-mul1.c_mpihelp_mul_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mpihelp_mul_1(i64* %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = sext i32 %15 to i64
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64* %19, i64** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i64*, i64** %5, align 8
  %22 = sext i32 %20 to i64
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64* %24, i64** %5, align 8
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %51, %4
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @umul_ppmm(i64 %26, i64 %27, i64 %32, i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %25
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %25, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  ret i64 %56
}

declare dso_local i32 @umul_ppmm(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
