; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_amiga.c_amiga_save_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_amiga.c_amiga_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.parport = type { i32 }
%struct.parport_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@ciaa = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ciab = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, %struct.parport_state*)* @amiga_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amiga_save_state(%struct.parport* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_state*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %5 = call i32 (...) @mb()
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ciaa, i32 0, i32 1), align 4
  %7 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %8 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ciaa, i32 0, i32 0), align 4
  %12 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %13 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ciab, i32 0, i32 0), align 4
  %17 = and i32 %16, 7
  %18 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %19 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ciab, i32 0, i32 1), align 4
  %23 = and i32 %22, 7
  %24 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %25 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
