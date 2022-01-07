; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_v4l2_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_v4l2_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }
%struct.ivtv = type { i32 }

@VIDIOC_DQEVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ivtv_v4l2_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ivtv_open_id* @fh2id(i32 %13)
  store %struct.ivtv_open_id* %14, %struct.ivtv_open_id** %8, align 8
  %15 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %16 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %15, i32 0, i32 0
  %17 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  store %struct.ivtv* %17, %struct.ivtv** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @VIDIOC_DQEVENT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @ivtv_serialized_ioctl(%struct.ivtv* %22, %struct.file* %23, i32 %24, i64 %25)
  store i64 %26, i64* %4, align 8
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @ivtv_serialized_ioctl(%struct.ivtv* %31, %struct.file* %32, i32 %33, i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %37 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %27, %21
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i64 @ivtv_serialized_ioctl(%struct.ivtv*, %struct.file*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
