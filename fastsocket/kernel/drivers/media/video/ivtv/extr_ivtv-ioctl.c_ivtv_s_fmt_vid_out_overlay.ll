; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_fmt_vid_out_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_fmt_vid_out_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ivtv = type { i32, i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_s_fmt_vid_out_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_s_fmt_vid_out_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.ivtv*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ivtv_open_id*
  %11 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %10, i32 0, i32 0
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = call i32 @ivtv_try_fmt_vid_out_overlay(%struct.file* %13, i8* %14, %struct.v4l2_format* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %35 = call i32 @ivtv_set_osd_alpha(%struct.ivtv* %34)
  br label %36

36:                                               ; preds = %19, %3
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @ivtv_try_fmt_vid_out_overlay(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @ivtv_set_osd_alpha(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
