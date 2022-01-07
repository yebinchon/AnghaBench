; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_aligned_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_aligned_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i32)* @xemaclite_aligned_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_aligned_read(i64* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64*, i64** %4, align 8
  store i64* %13, i64** %9, align 8
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %7, align 8
  br label %15

15:                                               ; preds = %33, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i64*, i64** %9, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %9, align 8
  %21 = load i64, i64* %19, align 8
  store i64 %21, i64* %10, align 8
  %22 = bitcast i64* %10 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* %23, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %8, align 8
  %30 = load i32, i32* %28, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %34, 4
  store i32 %35, i32* %6, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32*, i32** %7, align 8
  store i32* %40, i32** %11, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %9, align 8
  %43 = load i64, i64* %41, align 8
  store i64 %43, i64* %10, align 8
  %44 = bitcast i64* %10 to i32*
  store i32* %44, i32** %12, align 8
  br label %45

45:                                               ; preds = %52, %39
  %46 = load i32, i32* %6, align 4
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %45

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
