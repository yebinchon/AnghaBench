; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_sunbpp.c_parport_sunbpp_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_sunbpp.c_parport_sunbpp_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.parport_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, %struct.parport_state*)* @parport_sunbpp_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_sunbpp_restore_state(%struct.parport* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_state*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %5 = load %struct.parport*, %struct.parport** %3, align 8
  %6 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %7 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @parport_sunbpp_write_control(%struct.parport* %5, i32 %10)
  ret void
}

declare dso_local i32 @parport_sunbpp_write_control(%struct.parport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
