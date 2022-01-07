; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32 }
%struct.cx8802_fh = type { %struct.TYPE_2__, %struct.cx8802_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.cx8802_dev = type { i32, i32, %struct.cx88_core*, i64 }
%struct.cx88_core = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.cx8802_fh*, align 8
  %8 = alloca %struct.cx8802_dev*, align 8
  %9 = alloca %struct.cx88_core*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cx8802_fh*
  store %struct.cx8802_fh* %11, %struct.cx8802_fh** %7, align 8
  %12 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  %13 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %12, i32 0, i32 1
  %14 = load %struct.cx8802_dev*, %struct.cx8802_dev** %13, align 8
  store %struct.cx8802_dev* %14, %struct.cx8802_dev** %8, align 8
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 2
  %17 = load %struct.cx88_core*, %struct.cx88_core** %16, align 8
  store %struct.cx88_core* %17, %struct.cx88_core** %9, align 8
  %18 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %19 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %24 = call i32 @blackbird_stop_codec(%struct.cx8802_dev* %23)
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %27 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %28 = call i32 @cx88_set_freq(%struct.cx88_core* %26, %struct.v4l2_frequency* %27)
  %29 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %30 = call i32 @blackbird_initialize_codec(%struct.cx8802_dev* %29)
  %31 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %32 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %31, i32 0, i32 2
  %33 = load %struct.cx88_core*, %struct.cx88_core** %32, align 8
  %34 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %35 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %38 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  %41 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cx88_set_scale(%struct.cx88_core* %33, i32 %36, i32 %39, i32 %43)
  ret i32 0
}

declare dso_local i32 @blackbird_stop_codec(%struct.cx8802_dev*) #1

declare dso_local i32 @cx88_set_freq(%struct.cx88_core*, %struct.v4l2_frequency*) #1

declare dso_local i32 @blackbird_initialize_codec(%struct.cx8802_dev*) #1

declare dso_local i32 @cx88_set_scale(%struct.cx88_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
