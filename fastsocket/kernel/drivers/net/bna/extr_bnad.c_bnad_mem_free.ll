; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mem_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bna_mem_info = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32 }

@BNA_MEM_T_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_mem_info*)* @bnad_mem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_mem_free(%struct.bnad* %0, %struct.bna_mem_info* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_mem_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_mem_info* %1, %struct.bna_mem_info** %4, align 8
  %7 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %8 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %89

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %79, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %16 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %13
  %20 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %21 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %78

29:                                               ; preds = %19
  %30 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %31 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BNA_MEM_T_DMA, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %37 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BNA_GET_DMA_ADDR(i32* %42, i32 %43)
  %45 = load %struct.bnad*, %struct.bnad** %3, align 8
  %46 = getelementptr inbounds %struct.bnad, %struct.bnad* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %50 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %58 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dma_free_coherent(i32* %48, i32 %56, %struct.TYPE_5__* %64, i32 %65)
  br label %77

67:                                               ; preds = %29
  %68 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %69 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @kfree(%struct.TYPE_5__* %75)
  br label %77

77:                                               ; preds = %67, %35
  br label %78

78:                                               ; preds = %77, %19
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %13

82:                                               ; preds = %13
  %83 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %84 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @kfree(%struct.TYPE_5__* %85)
  %87 = load %struct.bna_mem_info*, %struct.bna_mem_info** %4, align 8
  %88 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %87, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %88, align 8
  br label %89

89:                                               ; preds = %82, %11
  ret void
}

declare dso_local i32 @BNA_GET_DMA_ADDR(i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
