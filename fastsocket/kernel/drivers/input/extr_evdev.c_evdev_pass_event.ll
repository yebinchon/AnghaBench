; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_pass_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_pass_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i32, i32, i32, %struct.input_event* }
%struct.input_event = type { i32 }

@EVDEV_BUFFER_SIZE = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_client*, %struct.input_event*)* @evdev_pass_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_pass_event(%struct.evdev_client* %0, %struct.input_event* %1) #0 {
  %3 = alloca %struct.evdev_client*, align 8
  %4 = alloca %struct.input_event*, align 8
  store %struct.evdev_client* %0, %struct.evdev_client** %3, align 8
  store %struct.input_event* %1, %struct.input_event** %4, align 8
  %5 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %6 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %9 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %8, i32 0, i32 3
  %10 = load %struct.input_event*, %struct.input_event** %9, align 8
  %11 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %12 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i64 %15
  %17 = load %struct.input_event*, %struct.input_event** %4, align 8
  %18 = bitcast %struct.input_event* %16 to i8*
  %19 = bitcast %struct.input_event* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i32, i32* @EVDEV_BUFFER_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %23 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %27 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %30 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %29, i32 0, i32 1
  %31 = load i32, i32* @SIGIO, align 4
  %32 = load i32, i32* @POLL_IN, align 4
  %33 = call i32 @kill_fasync(i32* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
