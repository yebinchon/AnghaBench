; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_reprogram_dma_ir_prg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_reprogram_dma_ir_prg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i32*, i32, i32, %struct.TYPE_2__, %struct.dma_cmd** }
%struct.TYPE_2__ = type { i64 }
%struct.dma_cmd = type { i8*, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_CTL_INPUT_MORE = common dso_local global i32 0, align 4
@DMA_CTL_UPDATE = common dso_local global i32 0, align 4
@DMA_CTL_IRQ = common dso_local global i32 0, align 4
@DMA_CTL_BRANCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_iso_ctx*, i32, i32, i32)* @reprogram_dma_ir_prg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_dma_ir_prg(%struct.dma_iso_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dma_iso_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dma_iso_ctx* %0, %struct.dma_iso_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %12, i32 0, i32 5
  %14 = load %struct.dma_cmd**, %struct.dma_cmd*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dma_cmd*, %struct.dma_cmd** %14, i64 %16
  %18 = load %struct.dma_cmd*, %struct.dma_cmd** %17, align 8
  store %struct.dma_cmd* %18, %struct.dma_cmd** %9, align 8
  %19 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = add i64 %22, %28
  store i64 %29, i64* %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %37, i32 0, i32 4
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %39, %43
  %45 = call i32 @dma_region_offset_to_bus(%struct.TYPE_2__* %38, i64 %44)
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %48 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %47, i64 0
  %49 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %50, i32 0, i32 4
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 4
  %54 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %53, %57
  %59 = call i32 @dma_region_offset_to_bus(%struct.TYPE_2__* %51, i64 %58)
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %62 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %61, i64 1
  %63 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  store i32 2, i32* %11, align 4
  br label %64

64:                                               ; preds = %93, %4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %64
  %72 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %72, i32 0, i32 4
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add i64 %74, %79
  %81 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %80, %84
  %86 = call i32 @dma_region_offset_to_bus(%struct.TYPE_2__* %73, i64 %85)
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %88, i64 %90
  %92 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  br label %93

93:                                               ; preds = %71
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %64

96:                                               ; preds = %64
  %97 = load i32, i32* @DMA_CTL_INPUT_MORE, align 4
  %98 = load i32, i32* @DMA_CTL_UPDATE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @DMA_CTL_IRQ, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @DMA_CTL_BRANCH, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %105 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %109, i64 %111
  %113 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %112, i32 0, i32 1
  store i8* %108, i8** %113, align 8
  %114 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %115 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %114, i32 0, i32 4
  %116 = load i64, i64* %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %117, 1
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = add i64 %116, %121
  %123 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %5, align 8
  %124 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %122, %126
  %128 = call i32 @dma_region_offset_to_bus(%struct.TYPE_2__* %115, i64 %127)
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.dma_cmd*, %struct.dma_cmd** %9, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %130, i64 %132
  %134 = getelementptr inbounds %struct.dma_cmd, %struct.dma_cmd* %133, i32 0, i32 0
  store i8* %129, i8** %134, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_region_offset_to_bus(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
