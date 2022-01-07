; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cx25840_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %46 [
    i32 131, label %13
    i32 130, label %20
    i32 128, label %27
    i32 129, label %40
  ]

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 128
  %19 = call i32 @cx25840_write(%struct.i2c_client* %14, i32 1044, i32 %18)
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 1
  %26 = call i32 @cx25840_write(%struct.i2c_client* %21, i32 1045, i32 %25)
  br label %49

27:                                               ; preds = %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 1
  %33 = call i32 @cx25840_write(%struct.i2c_client* %28, i32 1056, i32 %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 1
  %39 = call i32 @cx25840_write(%struct.i2c_client* %34, i32 1057, i32 %38)
  br label %49

40:                                               ; preds = %1
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cx25840_write(%struct.i2c_client* %41, i32 1058, i32 %44)
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %40, %27, %20, %13
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
