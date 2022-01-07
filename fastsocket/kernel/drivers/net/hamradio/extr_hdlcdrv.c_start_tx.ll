; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hdlcdrv_state = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.hdlcdrv_state*)* @start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_tx(%struct.net_device* %0, %struct.hdlcdrv_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hdlcdrv_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.hdlcdrv_state* %1, %struct.hdlcdrv_state** %4, align 8
  %5 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %6 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %9 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %10 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @tenms_to_2flags(%struct.hdlcdrv_state* %8, i32 %12)
  %14 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %15 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 8
  %17 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %18 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %21 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %24 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %28 = call i32 @hdlcdrv_transmitter(%struct.net_device* %26, %struct.hdlcdrv_state* %27)
  %29 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %30 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %33 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  ret void
}

declare dso_local i32 @tenms_to_2flags(%struct.hdlcdrv_state*, i32) #1

declare dso_local i32 @hdlcdrv_transmitter(%struct.net_device*, %struct.hdlcdrv_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
