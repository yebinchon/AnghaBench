; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_handshake_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_handshake_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32, i32 }

@VIO_DRIVER_RX_RING = common dso_local global i64 0, align 8
@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vio_driver_state*)* @vnet_handshake_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnet_handshake_complete(%struct.vio_driver_state* %0) #0 {
  %2 = alloca %struct.vio_driver_state*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %2, align 8
  %4 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %5 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %4, i32 0, i32 0
  %6 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %7 = load i64, i64* @VIO_DRIVER_RX_RING, align 8
  %8 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %6, i64 %7
  store %struct.vio_dring_state* %8, %struct.vio_dring_state** %3, align 8
  %9 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %10 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %12 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %14 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %13, i32 0, i32 0
  %15 = load %struct.vio_dring_state*, %struct.vio_dring_state** %14, align 8
  %16 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %17 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %15, i64 %16
  store %struct.vio_dring_state* %17, %struct.vio_dring_state** %3, align 8
  %18 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %19 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %21 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
