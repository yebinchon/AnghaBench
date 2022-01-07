; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-rpc/extr_dma.c_iomd_get_next_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-rpc/extr_dma.c_iomd_get_next_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }
%struct.iomd_dma = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@TRANSFER_SIZE = common dso_local global i64 0, align 8
@DMA_END_L = common dso_local global i64 0, align 8
@DMA_END_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, %struct.iomd_dma*)* @iomd_get_next_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomd_get_next_sg(%struct.scatterlist* %0, %struct.iomd_dma* %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca %struct.iomd_dma*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  store %struct.iomd_dma* %1, %struct.iomd_dma** %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %9 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %114

13:                                               ; preds = %2
  %14 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %15 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %20 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %27 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  %34 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %13
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @TRANSFER_SIZE, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %5, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @DMA_END_L, align 8
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @TRANSFER_SIZE, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %55 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub i64 %58, %59
  %61 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %62 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %66 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %45
  %70 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %71 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %105

75:                                               ; preds = %69
  %76 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %77 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call %struct.TYPE_5__* @sg_next(%struct.TYPE_5__* %79)
  %81 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %82 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %83, align 8
  %84 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %85 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %91 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %93 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %99 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %101 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  br label %112

105:                                              ; preds = %69
  %106 = load %struct.iomd_dma*, %struct.iomd_dma** %4, align 8
  %107 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %108, align 8
  %109 = load i64, i64* @DMA_END_S, align 8
  %110 = load i64, i64* %7, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %105, %75
  br label %113

113:                                              ; preds = %112, %45
  br label %122

114:                                              ; preds = %2
  %115 = load i64, i64* @DMA_END_S, align 8
  %116 = load i64, i64* @DMA_END_L, align 8
  %117 = or i64 %115, %116
  store i64 %117, i64* %7, align 8
  %118 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %121 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %114, %113
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %125 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = or i64 %126, %123
  store i64 %127, i64* %125, align 8
  ret void
}

declare dso_local %struct.TYPE_5__* @sg_next(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
