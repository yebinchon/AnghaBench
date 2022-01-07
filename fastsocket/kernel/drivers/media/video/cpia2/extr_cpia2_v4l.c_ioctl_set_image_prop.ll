; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_set_image_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_set_image_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.video_picture = type { i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Requested params: bright 0x%X, sat 0x%X, contrast 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_set_image_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_set_image_prop(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca %struct.video_picture*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.camera_data* %1, %struct.camera_data** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.video_picture*
  store %struct.video_picture* %8, %struct.video_picture** %5, align 8
  %9 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 1
  %11 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %12 = call i32 @memcpy(i32* %10, %struct.video_picture* %11, i32 12)
  %13 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %14 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 256
  %17 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %18 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %22 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 256
  %25 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %30 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 256
  %33 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %34 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 4
  %37 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %43 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %48 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i32 %51)
  %53 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %54 = call i32 @cpia2_set_color_params(%struct.camera_data* %53)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @memcpy(i32*, %struct.video_picture*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @cpia2_set_color_params(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
