; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_s_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tuner = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.analog_demod_ops }
%struct.analog_demod_ops = type { i32 (%struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [24 x i8] c"Putting tuner to sleep\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tuner_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tuner*, align 8
  %7 = alloca %struct.analog_demod_ops*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %8)
  store %struct.tuner* %9, %struct.tuner** %6, align 8
  %10 = load %struct.tuner*, %struct.tuner** %6, align 8
  %11 = getelementptr inbounds %struct.tuner, %struct.tuner* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.analog_demod_ops* %13, %struct.analog_demod_ops** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = call i32 @tuner_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tuner*, %struct.tuner** %6, align 8
  %20 = getelementptr inbounds %struct.tuner, %struct.tuner* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %7, align 8
  %22 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_4__*)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %7, align 8
  %27 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %27, align 8
  %29 = load %struct.tuner*, %struct.tuner** %6, align 8
  %30 = getelementptr inbounds %struct.tuner, %struct.tuner* %29, i32 0, i32 1
  %31 = call i32 %28(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %25, %17
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local i32 @tuner_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
