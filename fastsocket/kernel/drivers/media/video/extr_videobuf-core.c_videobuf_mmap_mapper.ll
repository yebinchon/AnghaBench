; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_mmap_mapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_mmap_mapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.videobuf_buffer**, %struct.TYPE_2__* }
%struct.videobuf_buffer = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"mmap appl bug: PROT_WRITE and MAP_SHARED are required\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@mmap_mapper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_mmap_mapper(%struct.videobuf_queue* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.videobuf_buffer*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %12 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %17 = call i32 @MAGIC_CHECK(i32 %15, i32 %16)
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VM_WRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VM_SHARED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24, %2
  %32 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %83

35:                                               ; preds = %24
  %36 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %37 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %76, %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %44 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %43, i32 0, i32 0
  %45 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %45, i64 %47
  %49 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %48, align 8
  store %struct.videobuf_buffer* %49, %struct.videobuf_buffer** %8, align 8
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %8, align 8
  %51 = icmp ne %struct.videobuf_buffer* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %42
  %53 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %8, align 8
  %54 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %8, align 8
  %60 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %70 = load i32, i32* @mmap_mapper, align 4
  %71 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %72 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %8, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %74 = call i32 @CALL(%struct.videobuf_queue* %69, i32 %70, %struct.videobuf_queue* %71, %struct.videobuf_buffer* %72, %struct.vm_area_struct* %73)
  store i32 %74, i32* %6, align 4
  br label %79

75:                                               ; preds = %58, %52, %42
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %38

79:                                               ; preds = %68, %38
  %80 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %81 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %31
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @CALL(%struct.videobuf_queue*, i32, %struct.videobuf_queue*, %struct.videobuf_buffer*, %struct.vm_area_struct*) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
