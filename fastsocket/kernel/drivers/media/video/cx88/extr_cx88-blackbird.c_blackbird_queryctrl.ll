; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { i32, i32 }
%struct.v4l2_queryctrl = type { i64, i32 }

@ctrl_classes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*, %struct.v4l2_queryctrl*)* @blackbird_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blackbird_queryctrl(%struct.cx8802_dev* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx8802_dev*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %6 = load i32, i32* @ctrl_classes, align 4
  %7 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @v4l2_ctrl_next(i32 %6, i64 %9)
  %11 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %22 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %25 = call i64 @cx8800_ctrl_query(i32 %23, %struct.v4l2_queryctrl* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %30 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %29, i32 0, i32 0
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %32 = call i64 @cx2341x_ctrl_query(i32* %30, %struct.v4l2_queryctrl* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %28
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %27, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @v4l2_ctrl_next(i32, i64) #1

declare dso_local i64 @cx8800_ctrl_query(i32, %struct.v4l2_queryctrl*) #1

declare dso_local i64 @cx2341x_ctrl_query(i32*, %struct.v4l2_queryctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
