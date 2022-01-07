; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_init_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pardevice = type { i32 }
%struct.parport_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ax_drvdata = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"init_state: %p: state=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pardevice*, %struct.parport_state*)* @parport_ax88796_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_ax88796_init_state(%struct.pardevice* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca %struct.parport_state*, align 8
  %5 = alloca %struct.ax_drvdata*, align 8
  store %struct.pardevice* %0, %struct.pardevice** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %6 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %7 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ax_drvdata* @pp_to_drv(i32 %8)
  store %struct.ax_drvdata* %9, %struct.ax_drvdata** %5, align 8
  %10 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %11 = call i32 @memset(%struct.parport_state* %10, i32 0, i32 4)
  %12 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %13 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %16 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %17 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.pardevice* %15, %struct.parport_state* %16)
  %18 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %19 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readb(i32 %20)
  %22 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %23 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  ret void
}

declare dso_local %struct.ax_drvdata* @pp_to_drv(i32) #1

declare dso_local i32 @memset(%struct.parport_state*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.pardevice*, %struct.parport_state*) #1

declare dso_local i32 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
