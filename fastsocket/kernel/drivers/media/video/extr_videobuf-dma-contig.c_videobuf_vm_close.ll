; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-contig.c_videobuf_vm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-contig.c_videobuf_vm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, %struct.videobuf_mapping* }
%struct.videobuf_mapping = type { i64, %struct.videobuf_queue* }
%struct.videobuf_queue = type { i32, %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i64, %struct.videobuf_mapping*, %struct.videobuf_dma_contig_memory* }
%struct.videobuf_dma_contig_memory = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"vm_close %p [count=%u,vma=%08lx-%08lx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"munmap %p q=%p\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@MAGIC_DC_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"buf[%d] freeing %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @videobuf_vm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @videobuf_vm_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.videobuf_mapping*, align 8
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.videobuf_dma_contig_memory*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 2
  %9 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  store %struct.videobuf_mapping* %9, %struct.videobuf_mapping** %3, align 8
  %10 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %11 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %10, i32 0, i32 1
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  store %struct.videobuf_queue* %12, %struct.videobuf_queue** %4, align 8
  %13 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %14 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %13, i32 0, i32 1
  %15 = load %struct.videobuf_queue*, %struct.videobuf_queue** %14, align 8
  %16 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %19 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %20 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.videobuf_mapping* %18, i64 %21, i32 %24, i32 %27)
  %29 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %30 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %34 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 0, %35
  br i1 %36, label %37, label %153

37:                                               ; preds = %1
  %38 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %39 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %38, i32 0, i32 1
  %40 = load %struct.videobuf_queue*, %struct.videobuf_queue** %39, align 8
  %41 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %44 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.videobuf_mapping* %43, %struct.videobuf_queue* %44)
  %46 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %47 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %50 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %55 = call i32 @videobuf_queue_cancel(%struct.videobuf_queue* %54)
  br label %56

56:                                               ; preds = %53, %37
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %144, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %147

61:                                               ; preds = %57
  %62 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %63 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = icmp eq %struct.TYPE_2__* null, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %144

71:                                               ; preds = %61
  %72 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %73 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %79, align 8
  %81 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %82 = icmp ne %struct.videobuf_mapping* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %144

84:                                               ; preds = %71
  %85 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %86 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %87, i64 %89
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %92, align 8
  store %struct.videobuf_dma_contig_memory* %93, %struct.videobuf_dma_contig_memory** %6, align 8
  %94 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %95 = icmp ne %struct.videobuf_dma_contig_memory* %94, null
  br i1 %95, label %96, label %127

96:                                               ; preds = %84
  %97 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %98 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MAGIC_DC_MEM, align 4
  %101 = call i32 @MAGIC_CHECK(i32 %99, i32 %100)
  %102 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %103 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %102, i32 0, i32 1
  %104 = load %struct.videobuf_queue*, %struct.videobuf_queue** %103, align 8
  %105 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %109 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32* %110)
  %112 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %113 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %116 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %119 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %122 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dma_free_coherent(i32 %114, i32 %117, i32* %120, i32 %123)
  %125 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %126 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %96, %84
  %128 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %129 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %130, i64 %132
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store %struct.videobuf_mapping* null, %struct.videobuf_mapping** %135, align 8
  %136 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %137 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %138, i64 %140
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %127, %83, %70
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %57

147:                                              ; preds = %57
  %148 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %149 = call i32 @kfree(%struct.videobuf_mapping* %148)
  %150 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %151 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  br label %153

153:                                              ; preds = %147, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @videobuf_queue_cancel(%struct.videobuf_queue*) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.videobuf_mapping*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
