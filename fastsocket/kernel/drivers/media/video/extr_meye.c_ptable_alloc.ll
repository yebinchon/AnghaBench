; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_ptable_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_ptable_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, %struct.TYPE_3__*, i64** }
%struct.TYPE_3__ = type { i32 }

@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MCHIP_NB_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ptable_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptable_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %7 = call i32 @memset(i64** %6, i32 0, i32 8)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @DMA_BIT_MASK(i32 32)
  %11 = call i64 @dma_set_mask(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %87

14:                                               ; preds = %0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @dma_alloc_coherent(i32* %16, i32 %17, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), i32 %18)
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %21 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  store i32 -1, i32* %1, align 4
  br label %87

24:                                               ; preds = %14
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  store i64* %25, i64** %2, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %83, %24
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MCHIP_NB_PAGES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @dma_alloc_coherent(i32* %32, i32 %33, i64* %4, i32 %34)
  %36 = bitcast i8* %35 to i64*
  %37 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %37, i64 %39
  store i64* %36, i64** %40, align 8
  %41 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %30
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  store i64* %48, i64** %2, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %68, %47
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i64*, i64** %2, align 8
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %4, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @dma_free_coherent(i32* %57, i32 %58, i64* %63, i64 %64)
  %66 = load i64*, i64** %2, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %2, align 8
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %49

71:                                               ; preds = %49
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %77 = call i32 @dma_free_coherent(i32* %73, i32 %74, i64* %75, i64 %76)
  store i64* null, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  store i32 -1, i32* %1, align 4
  br label %87

78:                                               ; preds = %30
  %79 = load i64, i64* %4, align 8
  %80 = load i64*, i64** %2, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64*, i64** %2, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %2, align 8
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %26

86:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %87

87:                                               ; preds = %86, %71, %23, %13
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare dso_local i32 @memset(i64**, i32, i32) #1

declare dso_local i64 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
