; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_cx25840_audio_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_cx25840_audio_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cx25840_audio_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_audio_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.cx25840_state*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.cx25840_state* %10, %struct.cx25840_state** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %59 [
    i32 128, label %16
    i32 130, label %35
    i32 129, label %44
    i32 131, label %53
  ]

16:                                               ; preds = %1
  %17 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %18 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %25 = call i32 @set_volume(%struct.i2c_client* %24, i32 0)
  br label %34

26:                                               ; preds = %16
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %29 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @set_volume(%struct.i2c_client* %27, i32 %32)
  br label %34

34:                                               ; preds = %26, %23
  br label %62

35:                                               ; preds = %1
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 48
  %41 = sdiv i32 %40, 65535
  %42 = sub nsw i32 48, %41
  %43 = call i32 @cx25840_and_or(%struct.i2c_client* %36, i32 2265, i32 -64, i32 %42)
  br label %62

44:                                               ; preds = %1
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 48
  %50 = sdiv i32 %49, 65535
  %51 = sub nsw i32 48, %50
  %52 = call i32 @cx25840_and_or(%struct.i2c_client* %45, i32 2267, i32 -64, i32 %51)
  br label %62

53:                                               ; preds = %1
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_balance(%struct.i2c_client* %54, i32 %57)
  br label %62

59:                                               ; preds = %1
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %53, %44, %35, %34
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @set_volume(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @set_balance(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
