; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.au0828_fh = type { %struct.au0828_dev* }
%struct.au0828_dev = type { i32 }

@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.au0828_fh*, align 8
  %8 = alloca %struct.au0828_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.au0828_fh*
  store %struct.au0828_fh* %10, %struct.au0828_fh** %7, align 8
  %11 = load %struct.au0828_fh*, %struct.au0828_fh** %7, align 8
  %12 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %11, i32 0, i32 0
  %13 = load %struct.au0828_dev*, %struct.au0828_dev** %12, align 8
  store %struct.au0828_dev* %13, %struct.au0828_dev** %8, align 8
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %8, align 8
  %15 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %14, i32 0, i32 0
  %16 = load i32, i32* @core, align 4
  %17 = load i32, i32* @s_std, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @v4l2_device_call_all(i32* %15, i32 0, i32 %16, i32 %17, i32 %19)
  ret i32 0
}

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
