; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_mcdi_iface = type { i32 }
%struct.efx_nic = type { %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.efx_mcdi_iface }

@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efx_mcdi_iface* (%struct.efx_nic*)* @efx_mcdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.siena_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = call i64 @efx_nic_rev(%struct.efx_nic* %4)
  %6 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %7 = icmp slt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @EFX_BUG_ON_PARANOID(i32 %8)
  %10 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load %struct.siena_nic_data*, %struct.siena_nic_data** %11, align 8
  store %struct.siena_nic_data* %12, %struct.siena_nic_data** %3, align 8
  %13 = load %struct.siena_nic_data*, %struct.siena_nic_data** %3, align 8
  %14 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %13, i32 0, i32 0
  ret %struct.efx_mcdi_iface* %14
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
