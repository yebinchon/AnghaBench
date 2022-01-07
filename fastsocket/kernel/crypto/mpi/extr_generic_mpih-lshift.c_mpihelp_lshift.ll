; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-lshift.c_mpihelp_lshift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_generic_mpih-lshift.c_mpihelp_lshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_MPI_LIMB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpihelp_lshift(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %21, 1
  store i64 %22, i64* %13, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %35, %4
  %32 = load i64, i64* %13, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %13, align 8
  %34 = icmp uge i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = lshr i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %9, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = shl i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %14, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
