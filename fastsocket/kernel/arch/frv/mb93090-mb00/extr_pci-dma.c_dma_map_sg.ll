; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mb93090-mb00/extr_pci-dma.c_dma_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mb93090-mb00/extr_pci-dma.c_dma_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@__KM_CACHE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_map_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @DMA_NONE, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = call i64 @__get_DAMPR(i32 2)
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %37, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i64 %25
  %27 = call i32 @sg_page(%struct.scatterlist* %26)
  %28 = load i32, i32* @__KM_CACHE, align 4
  %29 = call i8* @kmap_atomic(i32 %27, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i8*, i8** %10, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @frv_dcache_writeback(i64 %31, i64 %35)
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @__KM_CACHE, align 4
  %43 = call i32 @kunmap_atomic(i8* %41, i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @__set_DAMPR(i32 2, i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @__set_IAMPR(i32 2, i64 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @__get_DAMPR(i32) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @frv_dcache_writeback(i64, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @__set_DAMPR(i32, i64) #1

declare dso_local i32 @__set_IAMPR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
