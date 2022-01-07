; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32*, i32 }
%struct.cx18 = type { i32, i32 }
%struct.cx18_open_id = type { %struct.cx18* }

@ctrl_classes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@queryctrl = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx18_open_id*
  %12 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %11, i32 0, i32 0
  %13 = load %struct.cx18*, %struct.cx18** %12, align 8
  store %struct.cx18* %13, %struct.cx18** %8, align 8
  %14 = load i32, i32* @ctrl_classes, align 4
  %15 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @v4l2_ctrl_next(i32 %14, i32 %17)
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %80

28:                                               ; preds = %3
  %29 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %67 [
    i32 128, label %32
    i32 132, label %35
    i32 130, label %35
    i32 129, label %35
    i32 131, label %35
    i32 133, label %51
    i32 135, label %51
    i32 138, label %51
    i32 137, label %51
    i32 134, label %51
    i32 136, label %51
  ]

32:                                               ; preds = %28
  %33 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %34 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %33, i32 0, i32 0, i32 0, i32 0)
  store i32 %34, i32* %4, align 4
  br label %80

35:                                               ; preds = %28, %28, %28, %28
  %36 = load %struct.cx18*, %struct.cx18** %8, align 8
  %37 = getelementptr inbounds %struct.cx18, %struct.cx18* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @core, align 4
  %40 = load i32, i32* @queryctrl, align 4
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %42 = call i32 @v4l2_subdev_call(i32 %38, i32 %39, i32 %40, %struct.v4l2_queryctrl* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %46 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %35
  store i32 0, i32* %4, align 4
  br label %80

51:                                               ; preds = %28, %28, %28, %28, %28, %28
  %52 = load %struct.cx18*, %struct.cx18** %8, align 8
  %53 = getelementptr inbounds %struct.cx18, %struct.cx18* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @core, align 4
  %56 = load i32, i32* @queryctrl, align 4
  %57 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %58 = call i32 @v4l2_subdev_call(i32 %54, i32 %55, i32 %56, %struct.v4l2_queryctrl* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %62 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %51
  store i32 0, i32* %4, align 4
  br label %80

67:                                               ; preds = %28
  %68 = load %struct.cx18*, %struct.cx18** %8, align 8
  %69 = getelementptr inbounds %struct.cx18, %struct.cx18* %68, i32 0, i32 0
  %70 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %71 = call i32 @cx2341x_ctrl_query(i32* %69, %struct.v4l2_queryctrl* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %75 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %67
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %66, %50, %32, %25
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @v4l2_ctrl_next(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @cx2341x_ctrl_query(i32*, %struct.v4l2_queryctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
