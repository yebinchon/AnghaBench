; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-sub1.c_mpihelp_sub_n.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-sub1.c_mpihelp_sub_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mpihelp_sub_n(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = sext i32 %15 to i64
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64* %19, i64** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i64*, i64** %7, align 8
  %22 = sext i32 %20 to i64
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64* %24, i64** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i64*, i64** %5, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64* %29, i64** %5, align 8
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %64, %4
  %31 = load i64*, i64** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp sgt i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %30
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %30, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %11, align 8
  ret i64 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
