; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca %struct.v4l2_format, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %13, %struct.em28xx_fh** %8, align 8
  %14 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %15 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %14, i32 0, i32 0
  %16 = load %struct.em28xx*, %struct.em28xx** %15, align 8
  store %struct.em28xx* %16, %struct.em28xx** %9, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %18 = call i32 @check_dev(%struct.em28xx* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %35 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %40, i8* %41, %struct.v4l2_format* %10)
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %56 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %60 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %63 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %62, i32 0, i32 3
  %64 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %65 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %64, i32 0, i32 2
  %66 = call i32 @get_scale(%struct.em28xx* %55, i32 %58, i32 %61, i32* %63, i32* %65)
  %67 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %68 = call i32 @em28xx_resolution_set(%struct.em28xx* %67)
  %69 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 1
  %71 = load i32, i32* @core, align 4
  %72 = load i32, i32* @s_std, align 4
  %73 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %74 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @v4l2_device_call_all(i32* %70, i32 0, i32 %71, i32 %72, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %23, %21
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @get_scale(%struct.em28xx*, i32, i32, i32*, i32*) #1

declare dso_local i32 @em28xx_resolution_set(%struct.em28xx*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
