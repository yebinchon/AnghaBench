; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_vm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_vm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, %struct.videobuf_mapping* }
%struct.videobuf_mapping = type { i64, %struct.videobuf_queue* }
%struct.videobuf_queue = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.videobuf_mapping*, %struct.videobuf_dma_sg_memory* }
%struct.videobuf_dma_sg_memory = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.videobuf_queue*, %struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [40 x i8] c"vm_close %p [count=%d,vma=%08lx-%08lx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"munmap %p q=%p\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@MAGIC_SG_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @videobuf_vm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @videobuf_vm_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.videobuf_mapping*, align 8
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.videobuf_dma_sg_memory*, align 8
  %6 = alloca i32, align 4
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
  %14 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %15 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.videobuf_queue*
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, %struct.videobuf_mapping*, %struct.videobuf_queue*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.videobuf_mapping* %13, %struct.videobuf_queue* %17, i32 %20, i32 %23)
  %25 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %26 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %30 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 0, %31
  br i1 %32, label %33, label %123

33:                                               ; preds = %1
  %34 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %35 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %36 = call i32 (i32, i8*, %struct.videobuf_mapping*, %struct.videobuf_queue*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.videobuf_mapping* %34, %struct.videobuf_queue* %35)
  %37 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %38 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %115, %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %118

43:                                               ; preds = %39
  %44 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %45 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp eq %struct.TYPE_4__* null, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %115

53:                                               ; preds = %43
  %54 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %55 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %61, align 8
  store %struct.videobuf_dma_sg_memory* %62, %struct.videobuf_dma_sg_memory** %5, align 8
  %63 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %64 = icmp ne %struct.videobuf_dma_sg_memory* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %115

66:                                               ; preds = %53
  %67 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %5, align 8
  %68 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MAGIC_SG_MEM, align 4
  %71 = call i32 @MAGIC_CHECK(i32 %69, i32 %70)
  %72 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %73 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %79, align 8
  %81 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %82 = icmp ne %struct.videobuf_mapping* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %115

84:                                               ; preds = %66
  %85 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %86 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store %struct.videobuf_mapping* null, %struct.videobuf_mapping** %92, align 8
  %93 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %94 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %95, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %102 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32 (%struct.videobuf_queue*, %struct.TYPE_4__*)*, i32 (%struct.videobuf_queue*, %struct.TYPE_4__*)** %104, align 8
  %106 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %107 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %108 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = call i32 %105(%struct.videobuf_queue* %106, %struct.TYPE_4__* %113)
  br label %115

115:                                              ; preds = %84, %83, %65, %52
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %39

118:                                              ; preds = %39
  %119 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %120 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %119)
  %121 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %122 = call i32 @kfree(%struct.videobuf_mapping* %121)
  br label %123

123:                                              ; preds = %118, %1
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.videobuf_mapping*, %struct.videobuf_queue*, ...) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

declare dso_local i32 @kfree(%struct.videobuf_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
