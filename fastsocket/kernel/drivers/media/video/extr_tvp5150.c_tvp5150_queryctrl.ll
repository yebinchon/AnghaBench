; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_queryctrl = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"queryctrl called\0A\00", align 1
@tvp5150_qctrl = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_queryctrl*)* @tvp5150_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_queryctrl(%struct.v4l2_subdev* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %7 = load i32, i32* @debug, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call i32 @v4l2_dbg(i32 1, i32 %7, %struct.v4l2_subdev* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %39, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp5150_qctrl, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp5150_qctrl, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %23, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp5150_qctrl, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = call i32 @memcpy(%struct.v4l2_queryctrl* %32, %struct.TYPE_4__* %36, i32 8)
  store i32 0, i32* %3, align 4
  br label %45

38:                                               ; preds = %20, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %10

42:                                               ; preds = %10
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(%struct.v4l2_queryctrl*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
