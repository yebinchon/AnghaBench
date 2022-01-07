; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_v4l_print_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_v4l_print_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [93 x i8] c"width=%d, height=%d, format=%c%c%c%c, field=%s, bytesperline=%d sizeimage=%d, colorspace=%d\0A\00", align 1
@v4l2_field_names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_device*, %struct.v4l2_pix_format*)* @v4l_print_pix_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_pix_fmt(%struct.video_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.video_device* %0, %struct.video_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %5 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @v4l2_field_names, align 4
  %34 = call i32 @prt_names(i32 %32, i32 %33)
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dbgarg2(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %14, i32 %19, i32 %24, i32 %29, i32 %34, i32 %37, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @dbgarg2(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @prt_names(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
