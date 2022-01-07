; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_v4l2_dev_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_v4l2_dev_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx23885_dev = type { %struct.v4l2_subdev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32, i8*)* @cx23885_v4l2_dev_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_v4l2_dev_notify(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cx23885_dev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = icmp eq %struct.v4l2_subdev* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %43

11:                                               ; preds = %3
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cx23885_dev* @to_cx23885(i32 %14)
  store %struct.cx23885_dev* %15, %struct.cx23885_dev** %7, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %43 [
    i32 129, label %17
    i32 128, label %30
  ]

17:                                               ; preds = %11
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %20 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %19, i32 0, i32 0
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %20, align 8
  %22 = icmp eq %struct.v4l2_subdev* %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cx23885_ir_rx_v4l2_dev_notify(%struct.v4l2_subdev* %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  br label %43

30:                                               ; preds = %11
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %33 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %32, i32 0, i32 0
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %33, align 8
  %35 = icmp eq %struct.v4l2_subdev* %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cx23885_ir_tx_v4l2_dev_notify(%struct.v4l2_subdev* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %10, %11, %42, %29
  ret void
}

declare dso_local %struct.cx23885_dev* @to_cx23885(i32) #1

declare dso_local i32 @cx23885_ir_rx_v4l2_dev_notify(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @cx23885_ir_tx_v4l2_dev_notify(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
