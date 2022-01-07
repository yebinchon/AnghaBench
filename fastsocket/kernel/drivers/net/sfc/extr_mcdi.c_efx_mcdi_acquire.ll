; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_mcdi_iface = type { i32, i32 }

@MCDI_STATE_QUIESCENT = common dso_local global i64 0, align 8
@MCDI_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_mcdi_iface*)* @efx_mcdi_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_acquire(%struct.efx_mcdi_iface* %0) #0 {
  %2 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_mcdi_iface* %0, %struct.efx_mcdi_iface** %2, align 8
  %3 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %2, align 8
  %4 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %2, align 8
  %7 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %6, i32 0, i32 0
  %8 = load i64, i64* @MCDI_STATE_QUIESCENT, align 8
  %9 = load i32, i32* @MCDI_STATE_RUNNING, align 4
  %10 = call i64 @atomic_cmpxchg(i32* %7, i64 %8, i32 %9)
  %11 = load i64, i64* @MCDI_STATE_QUIESCENT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @wait_event(i32 %5, i32 %13)
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
