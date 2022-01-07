; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_fe_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_fe_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner*, %struct.TYPE_2__ }
%struct.tuner = type { i32 }
%struct.TYPE_2__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.analog_parameters = type opaque
%struct.analog_parameters.1 = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Tuner frontend module has no way to set freq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.analog_parameters.1*)* @fe_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_set_params(%struct.dvb_frontend* %0, %struct.analog_parameters.1* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters.1*, align 8
  %5 = alloca %struct.dvb_tuner_ops*, align 8
  %6 = alloca %struct.tuner*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters.1* %1, %struct.analog_parameters.1** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.dvb_tuner_ops* %9, %struct.dvb_tuner_ops** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tuner*, %struct.tuner** %11, align 8
  store %struct.tuner* %12, %struct.tuner** %6, align 8
  %13 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %13, i32 0, i32 0
  %15 = load i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)** %14, align 8
  %16 = icmp eq i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)* null, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @tuner_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %5, align 8
  %21 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.analog_parameters*)** %21, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = bitcast %struct.dvb_frontend* %23 to %struct.dvb_frontend.0*
  %25 = load %struct.analog_parameters.1*, %struct.analog_parameters.1** %4, align 8
  %26 = bitcast %struct.analog_parameters.1* %25 to %struct.analog_parameters*
  %27 = call i32 %22(%struct.dvb_frontend.0* %24, %struct.analog_parameters* %26)
  br label %28

28:                                               ; preds = %19, %17
  ret void
}

declare dso_local i32 @tuner_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
