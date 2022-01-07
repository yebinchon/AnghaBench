; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_dma-mapping.c_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_dma-mapping.c_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@pgprot_kernel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @dma_alloc_from_coherent(%struct.device* %12, i64 %13, i32* %14, i8** %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %5, align 8
  br label %43

19:                                               ; preds = %4
  %20 = call i64 (...) @arch_is_coherent()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @kmalloc(i64 %23, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i8* null, i8** %5, align 8
  br label %43

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @virt_to_dma(%struct.device* %30, i8* %31)
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %5, align 8
  br label %43

35:                                               ; preds = %19
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @pgprot_kernel, align 4
  %41 = call i32 @pgprot_noncached(i32 %40)
  %42 = call i8* @__dma_alloc(%struct.device* %36, i64 %37, i32* %38, i32 %39, i32 %41)
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %35, %29, %28, %17
  %44 = load i8*, i8** %5, align 8
  ret i8* %44
}

declare dso_local i64 @dma_alloc_from_coherent(%struct.device*, i64, i32*, i8**) #1

declare dso_local i64 @arch_is_coherent(...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @virt_to_dma(%struct.device*, i8*) #1

declare dso_local i8* @__dma_alloc(%struct.device*, i64, i32*, i32, i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
