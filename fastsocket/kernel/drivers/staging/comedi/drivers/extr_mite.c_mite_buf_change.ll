; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_buf_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_buf_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_dma_descriptor_ring = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8* }
%struct.comedi_async = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ring->hw_dev=%p, n_links=0x%04x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"mite: ring buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mite_buf_change(%struct.mite_dma_descriptor_ring* %0, %struct.comedi_async* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mite_dma_descriptor_ring*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mite_dma_descriptor_ring* %0, %struct.mite_dma_descriptor_ring** %4, align 8
  store %struct.comedi_async* %1, %struct.comedi_async** %5, align 8
  %8 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %9 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %14 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %17 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %23 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %26 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dma_free_coherent(i32 %15, i32 %21, %struct.TYPE_5__* %24, i32 %27)
  br label %29

29:                                               ; preds = %12, %2
  %30 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %31 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %30, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %33 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %35 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %37 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %142

41:                                               ; preds = %29
  %42 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %43 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PAGE_SHIFT, align 4
  %46 = lshr i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %48 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @MDPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %53 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %60 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %59, i32 0, i32 1
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.TYPE_5__* @dma_alloc_coherent(i32 %54, i32 %58, i32* %60, i32 %61)
  %63 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %64 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %63, i32 0, i32 2
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %66 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %41
  %70 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %142

73:                                               ; preds = %41
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %76 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %125, %73
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %128

81:                                               ; preds = %77
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %85 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i8* %83, i8** %90, align 8
  %91 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %92 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %101 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i8* %99, i8** %106, align 8
  %107 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %108 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = add i64 %110, %114
  %116 = trunc i64 %115 to i32
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %119 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %118, i32 0, i32 2
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i8* %117, i8** %124, align 8
  br label %125

125:                                              ; preds = %81
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %77

128:                                              ; preds = %77
  %129 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %130 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %4, align 8
  %134 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sub i32 %136, 1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i8* %132, i8** %140, align 8
  %141 = call i32 (...) @smp_wmb()
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %128, %69, %40
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @MDPRINTK(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
