; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_mode_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_mode_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i64 }

@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8
@MCDI_MODE_POLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mcdi_mode_poll(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = call i64 @efx_nic_rev(%struct.efx_nic* %4)
  %6 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %11 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %10)
  store %struct.efx_mcdi_iface* %11, %struct.efx_mcdi_iface** %3, align 8
  %12 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %13 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MCDI_MODE_POLL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %24

18:                                               ; preds = %9
  %19 = load i64, i64* @MCDI_MODE_POLL, align 8
  %20 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %21 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %3, align 8
  %23 = call i32 @efx_mcdi_complete(%struct.efx_mcdi_iface* %22)
  br label %24

24:                                               ; preds = %18, %17, %8
  ret void
}

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_complete(%struct.efx_mcdi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
