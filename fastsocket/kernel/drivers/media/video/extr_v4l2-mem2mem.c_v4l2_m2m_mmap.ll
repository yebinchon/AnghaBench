; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.videobuf_queue = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@DST_QUEUE_OFF_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_mmap(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.videobuf_queue*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %6, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = shl i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %19 = call %struct.videobuf_queue* @v4l2_m2m_get_src_vq(%struct.v4l2_m2m_ctx* %18)
  store %struct.videobuf_queue* %19, %struct.videobuf_queue** %8, align 8
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %22 = call %struct.videobuf_queue* @v4l2_m2m_get_dst_vq(%struct.v4l2_m2m_ctx* %21)
  store %struct.videobuf_queue* %22, %struct.videobuf_queue** %8, align 8
  %23 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, %25
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %20, %17
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = call i32 @videobuf_mmap_mapper(%struct.videobuf_queue* %31, %struct.vm_area_struct* %32)
  ret i32 %33
}

declare dso_local %struct.videobuf_queue* @v4l2_m2m_get_src_vq(%struct.v4l2_m2m_ctx*) #1

declare dso_local %struct.videobuf_queue* @v4l2_m2m_get_dst_vq(%struct.v4l2_m2m_ctx*) #1

declare dso_local i32 @videobuf_mmap_mapper(%struct.videobuf_queue*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
