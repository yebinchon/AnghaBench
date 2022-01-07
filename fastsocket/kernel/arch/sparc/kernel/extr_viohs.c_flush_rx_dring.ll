; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_flush_rx_dring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_flush_rx_dring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i32*, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32 }

@VIO_DR_STATE_RXREG = common dso_local global i32 0, align 4
@VIO_DRIVER_RX_RING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vio_driver_state*)* @flush_rx_dring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_rx_dring(%struct.vio_driver_state* %0) #0 {
  %2 = alloca %struct.vio_driver_state*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  %4 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %2, align 8
  %5 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %6 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %15 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %14, i32 0, i32 2
  %16 = load %struct.vio_dring_state*, %struct.vio_dring_state** %15, align 8
  %17 = load i64, i64* @VIO_DRIVER_RX_RING, align 8
  %18 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %16, i64 %17
  store %struct.vio_dring_state* %18, %struct.vio_dring_state** %3, align 8
  %19 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %20 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %23 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %30 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %34 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %36 = call i32 @memset(%struct.vio_dring_state* %35, i32 0, i32 4)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %39 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(%struct.vio_dring_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
