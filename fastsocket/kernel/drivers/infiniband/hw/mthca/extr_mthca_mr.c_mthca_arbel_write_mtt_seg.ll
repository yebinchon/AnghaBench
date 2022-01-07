; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_arbel_write_mtt_seg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_arbel_write_mtt_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mthca_mtt = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MTHCA_MTT_FLAG_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_mtt*, i32, i32*, i32)* @mthca_arbel_write_mtt_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_arbel_write_mtt_seg(%struct.mthca_dev* %0, %struct.mthca_mtt* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.mthca_mtt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.mthca_mtt* %1, %struct.mthca_mtt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sdiv i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %24, %27
  %29 = sub i64 %28, 1
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %29, %31
  %33 = icmp ne i64 %22, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = srem i32 %36, %40
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %44 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mthca_mtt*, %struct.mthca_mtt** %7, align 8
  %48 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %49, %56
  %58 = call i32* @mthca_table_find(i32 %46, i64 %57, i32* %12)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %65 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_sync_single_for_cpu(i32* %67, i32 %68, i32 %72, i32 %73)
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %92, %5
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MTHCA_MTT_FLAG_PRESENT, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @cpu_to_be64(i32 %86)
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %97 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @DMA_TO_DEVICE, align 4
  %106 = call i32 @dma_sync_single_for_device(i32* %99, i32 %100, i32 %104, i32 %105)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @mthca_table_find(i32, i64, i32*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
