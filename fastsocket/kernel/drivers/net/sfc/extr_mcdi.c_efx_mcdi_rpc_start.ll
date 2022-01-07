; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_rpc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_rpc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i32, i32 }

@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mcdi_rpc_start(%struct.efx_nic* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %11 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %10)
  store %struct.efx_mcdi_iface* %11, %struct.efx_mcdi_iface** %9, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %13 = call i64 @efx_nic_rev(%struct.efx_nic* %12)
  %14 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %19 = call i32 @efx_mcdi_acquire(%struct.efx_mcdi_iface* %18)
  %20 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %21 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %24 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %28 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @efx_mcdi_copyin(%struct.efx_nic* %30, i32 %31, i32* %32, i64 %33)
  ret void
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_acquire(%struct.efx_mcdi_iface*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @efx_mcdi_copyin(%struct.efx_nic*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
