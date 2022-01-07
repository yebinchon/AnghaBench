; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_v4l2_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_v4l2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.au0828_fh* }
%struct.au0828_fh = type { i64, i32, i32, %struct.au0828_dev* }
%struct.au0828_dev = type { i32 }
%struct.vm_area_struct = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @au0828_v4l2_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_v4l2_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.au0828_fh*, align 8
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.au0828_fh*, %struct.au0828_fh** %10, align 8
  store %struct.au0828_fh* %11, %struct.au0828_fh** %6, align 8
  %12 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %13 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %12, i32 0, i32 3
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %13, align 8
  store %struct.au0828_dev* %14, %struct.au0828_dev** %7, align 8
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %16 = call i32 @check_dev(%struct.au0828_dev* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %23 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %29 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %28, i32 0, i32 2
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = call i32 @videobuf_mmap_mapper(i32* %29, %struct.vm_area_struct* %30)
  store i32 %31, i32* %8, align 4
  br label %44

32:                                               ; preds = %21
  %33 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %34 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %40 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %39, i32 0, i32 1
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = call i32 @videobuf_mmap_mapper(i32* %40, %struct.vm_area_struct* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %32
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @check_dev(%struct.au0828_dev*) #1

declare dso_local i32 @videobuf_mmap_mapper(i32*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
