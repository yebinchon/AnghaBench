; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_set_video_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_set_video_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i32, i32, %struct.em28xx_fmt* }
%struct.em28xx_fmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32, i32)* @em28xx_set_video_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_set_video_format(%struct.em28xx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.em28xx_fmt*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.em28xx_fmt* @format_by_fourcc(i32 %11)
  store %struct.em28xx_fmt* %12, %struct.em28xx_fmt** %10, align 8
  %13 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %10, align 8
  %14 = icmp ne %struct.em28xx_fmt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %4
  %19 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %10, align 8
  %20 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 4
  store %struct.em28xx_fmt* %19, %struct.em28xx_fmt** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %29 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 3
  %37 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 2
  %39 = call i32 @get_scale(%struct.em28xx* %28, i32 %31, i32 %34, i32* %36, i32* %38)
  %40 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %41 = call i32 @em28xx_set_alternate(%struct.em28xx* %40)
  %42 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %43 = call i32 @em28xx_resolution_set(%struct.em28xx* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %18, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.em28xx_fmt* @format_by_fourcc(i32) #1

declare dso_local i32 @get_scale(%struct.em28xx*, i32, i32, i32*, i32*) #1

declare dso_local i32 @em28xx_set_alternate(%struct.em28xx*) #1

declare dso_local i32 @em28xx_resolution_set(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
