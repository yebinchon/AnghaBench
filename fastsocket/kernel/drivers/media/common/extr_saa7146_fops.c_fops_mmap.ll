; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_fops_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_fops_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32, %struct.videobuf_queue, %struct.videobuf_queue }
%struct.videobuf_queue = type { i32 }
%struct.vm_area_struct = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @fops_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.saa7146_fh*, align 8
  %7 = alloca %struct.videobuf_queue*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  store %struct.saa7146_fh* %10, %struct.saa7146_fh** %6, align 8
  %11 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %28 [
    i32 128, label %14
    i32 129, label %21
  ]

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = bitcast %struct.vm_area_struct* %16 to i8*
  %18 = call i32 @DEB_EE(i8* %17)
  %19 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %20 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %19, i32 0, i32 2
  store %struct.videobuf_queue* %20, %struct.videobuf_queue** %7, align 8
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = bitcast %struct.vm_area_struct* %23 to i8*
  %25 = call i32 @DEB_EE(i8* %24)
  %26 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %27 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %26, i32 0, i32 1
  store %struct.videobuf_queue* %27, %struct.videobuf_queue** %7, align 8
  br label %30

28:                                               ; preds = %2
  %29 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %34

30:                                               ; preds = %21, %14
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %7, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = call i32 @videobuf_mmap_mapper(%struct.videobuf_queue* %31, %struct.vm_area_struct* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @videobuf_mmap_mapper(%struct.videobuf_queue*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
