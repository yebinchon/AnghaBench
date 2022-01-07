; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-mul2.c_mpihelp_addmul_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-mul2.c_mpihelp_addmul_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mpihelp_addmul_1(i64* %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i64*, i64** %5, align 8
  %18 = sext i32 %16 to i64
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64* %20, i64** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64* %25, i64** %6, align 8
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %68, %4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @umul_ppmm(i64 %27, i64 %28, i64 %33, i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp slt i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %11, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %9, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp slt i64 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %63, i64* %67, align 8
  br label %68

68:                                               ; preds = %26
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %26, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  ret i64 %73
}

declare dso_local i32 @umul_ppmm(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
