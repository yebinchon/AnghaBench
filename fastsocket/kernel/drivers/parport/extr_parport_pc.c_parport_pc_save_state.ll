; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_parport_pc_save_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_parport_pc_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.parport_pc_private* }
%struct.parport_pc_private = type { i64, i32 }
%struct.parport_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, %struct.parport_state*)* @parport_pc_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_pc_save_state(%struct.parport* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_state*, align 8
  %5 = alloca %struct.parport_pc_private*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = getelementptr inbounds %struct.parport, %struct.parport* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.parport_pc_private*, %struct.parport_pc_private** %9, align 8
  store %struct.parport_pc_private* %10, %struct.parport_pc_private** %5, align 8
  %11 = load %struct.parport_pc_private*, %struct.parport_pc_private** %5, align 8
  %12 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %15 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = load %struct.parport_pc_private*, %struct.parport_pc_private** %5, align 8
  %19 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.parport*, %struct.parport** %3, align 8
  %24 = call i32 @ECONTROL(%struct.parport* %23)
  %25 = call i32 @inb(i32 %24)
  %26 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %27 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ECONTROL(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
