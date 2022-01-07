; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.cx25840_state = type { i32, i64 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @cx25840_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.cx25840_state* %9, %struct.cx25840_state** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %13 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %18 = call i64 @is_cx2583x(%struct.cx25840_state* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %46

21:                                               ; preds = %16
  %22 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %37 [
    i32 129, label %25
    i32 128, label %28
    i32 132, label %28
    i32 131, label %31
    i32 130, label %34
  ]

25:                                               ; preds = %21
  %26 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %27 = call i32 @cx25840_and_or(%struct.i2c_client* %26, i32 2057, i32 -16, i32 0)
  br label %40

28:                                               ; preds = %21, %21
  %29 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %30 = call i32 @cx25840_and_or(%struct.i2c_client* %29, i32 2057, i32 -16, i32 4)
  br label %40

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %33 = call i32 @cx25840_and_or(%struct.i2c_client* %32, i32 2057, i32 -16, i32 7)
  br label %40

34:                                               ; preds = %21
  %35 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %36 = call i32 @cx25840_and_or(%struct.i2c_client* %35, i32 2057, i32 -16, i32 1)
  br label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %34, %31, %28, %25
  %41 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %45 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %37, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
