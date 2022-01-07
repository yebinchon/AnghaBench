; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_cx231xx_set_analog_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_cx231xx_set_analog_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.TYPE_6__*, %struct.analog_parameters*)* }
%struct.analog_parameters = type opaque
%struct.analog_parameters.0 = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_analog_freq(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_tuner_ops*, align 8
  %7 = alloca %struct.analog_parameters.0, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %12
  %20 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.dvb_tuner_ops* %26, %struct.dvb_tuner_ops** %6, align 8
  %27 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %28 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_6__*, %struct.analog_parameters*)*, i32 (%struct.TYPE_6__*, %struct.analog_parameters*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_6__*, %struct.analog_parameters*)* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %40 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_6__*, %struct.analog_parameters*)*, i32 (%struct.TYPE_6__*, %struct.analog_parameters*)** %40, align 8
  %42 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = bitcast %struct.analog_parameters.0* %7 to %struct.analog_parameters*
  %48 = call i32 %41(%struct.TYPE_6__* %46, %struct.analog_parameters* %47)
  br label %49

49:                                               ; preds = %31, %19
  br label %50

50:                                               ; preds = %49, %12, %2
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
