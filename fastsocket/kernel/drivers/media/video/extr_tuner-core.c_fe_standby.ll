; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_fe_standby.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_fe_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @fe_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_standby(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dvb_tuner_ops*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.dvb_tuner_ops* %6, %struct.dvb_tuner_ops** %3, align 8
  %7 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %7, i32 0, i32 0
  %9 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.dvb_frontend.0*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %12, i32 0, i32 0
  %14 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %13, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %16 = bitcast %struct.dvb_frontend* %15 to %struct.dvb_frontend.0*
  %17 = call i32 %14(%struct.dvb_frontend.0* %16)
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
