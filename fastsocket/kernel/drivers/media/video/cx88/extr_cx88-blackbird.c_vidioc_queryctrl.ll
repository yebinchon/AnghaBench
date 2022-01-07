; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i64 }
%struct.cx8802_dev = type { i32 }
%struct.cx8802_fh = type { %struct.cx8802_dev* }

@ctrl_classes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.cx8802_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cx8802_fh*
  %11 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %10, i32 0, i32 0
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %11, align 8
  store %struct.cx8802_dev* %12, %struct.cx8802_dev** %8, align 8
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %14 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %15 = call i64 @blackbird_queryctrl(%struct.cx8802_dev* %13, %struct.v4l2_queryctrl* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load i32, i32* @ctrl_classes, align 4
  %20 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @v4l2_ctrl_next(i32 %19, i64 %22)
  %24 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %18
  %37 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %38 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %41 = call i32 @cx8800_ctrl_query(i32 %39, %struct.v4l2_queryctrl* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %33, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @blackbird_queryctrl(%struct.cx8802_dev*, %struct.v4l2_queryctrl*) #1

declare dso_local i64 @v4l2_ctrl_next(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cx8800_ctrl_query(i32, %struct.v4l2_queryctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
