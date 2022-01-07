; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64, i64, i32*, i8*, i64)* @alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_ring(%struct.device* %0, i64 %1, i64 %2, i64 %3, i32* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = mul i64 %19, %20
  %22 = load i64, i64* %15, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = load i64, i64* %16, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dma_alloc_coherent(%struct.device* %24, i64 %25, i32* %26, i32 %27)
  store i8* %28, i8** %18, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %62

32:                                               ; preds = %7
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kcalloc(i64 %36, i64 %37, i32 %38)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_free_coherent(%struct.device* %43, i64 %44, i8* %45, i32 %47)
  store i8* null, i8** %8, align 8
  br label %62

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** %14, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8*, i8** %17, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i8*, i8** %18, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @memset(i8* %58, i32 0, i64 %59)
  %61 = load i8*, i8** %18, align 8
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %57, %42, %31
  %63 = load i8*, i8** %8, align 8
  ret i8* %63
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i8* @kcalloc(i64, i64, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
