; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_aligned_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_aligned_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i32)* @xemaclite_aligned_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_aligned_write(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64*, i64** %5, align 8
  store i64* %13, i64** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = bitcast i64* %7 to i8*
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* %22, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %10, align 8
  store i32 %24, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %27, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = sub i32 %36, 4
  store i32 %37, i32* %6, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  %42 = bitcast i64* %7 to i32*
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %11, align 8
  br label %44

44:                                               ; preds = %53, %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp ugt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %11, align 8
  %50 = load i32, i32* %48, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %44

56:                                               ; preds = %44
  %57 = load i64, i64* %7, align 8
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
