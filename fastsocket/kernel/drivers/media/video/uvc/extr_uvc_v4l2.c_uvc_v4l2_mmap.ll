; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uvc_fh* }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32 }
%struct.vm_area_struct = type { i32 }

@UVC_TRACE_CALLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"uvc_v4l2_mmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @uvc_v4l2_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.uvc_fh*, align 8
  %6 = alloca %struct.uvc_streaming*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  store %struct.uvc_fh* %9, %struct.uvc_fh** %5, align 8
  %10 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %11 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %10, i32 0, i32 0
  %12 = load %struct.uvc_streaming*, %struct.uvc_streaming** %11, align 8
  store %struct.uvc_streaming* %12, %struct.uvc_streaming** %6, align 8
  %13 = load i32, i32* @UVC_TRACE_CALLS, align 4
  %14 = call i32 @uvc_trace(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %16 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %15, i32 0, i32 0
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = call i32 @uvc_queue_mmap(i32* %16, %struct.vm_area_struct* %17)
  ret i32 %18
}

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i32 @uvc_queue_mmap(i32*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
