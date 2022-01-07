; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tuner = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.analog_demod_ops }
%struct.analog_demod_ops = type { i32 (%struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [9 x i8] c"suspend\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @tuner_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_suspend(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tuner*, align 8
  %6 = alloca %struct.analog_demod_ops*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call i32 @i2c_get_clientdata(%struct.i2c_client* %7)
  %9 = call %struct.tuner* @to_tuner(i32 %8)
  store %struct.tuner* %9, %struct.tuner** %5, align 8
  %10 = load %struct.tuner*, %struct.tuner** %5, align 8
  %11 = getelementptr inbounds %struct.tuner, %struct.tuner* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.analog_demod_ops* %13, %struct.analog_demod_ops** %6, align 8
  %14 = call i32 @tuner_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.tuner*, %struct.tuner** %5, align 8
  %16 = getelementptr inbounds %struct.tuner, %struct.tuner* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %6, align 8
  %21 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_4__*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %6, align 8
  %26 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %26, align 8
  %28 = load %struct.tuner*, %struct.tuner** %5, align 8
  %29 = getelementptr inbounds %struct.tuner, %struct.tuner* %28, i32 0, i32 0
  %30 = call i32 %27(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %24, %19, %2
  ret i32 0
}

declare dso_local %struct.tuner* @to_tuner(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @tuner_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
