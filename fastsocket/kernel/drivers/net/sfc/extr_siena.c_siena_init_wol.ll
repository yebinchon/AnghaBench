; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_init_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_init_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @siena_init_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siena_init_wol(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.siena_nic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 1
  %7 = load %struct.siena_nic_data*, %struct.siena_nic_data** %6, align 8
  store %struct.siena_nic_data* %7, %struct.siena_nic_data** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = load %struct.siena_nic_data*, %struct.siena_nic_data** %3, align 8
  %10 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %9, i32 0, i32 0
  %11 = call i32 @efx_mcdi_wol_filter_get_magic(%struct.efx_nic* %8, i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = call i32 @efx_mcdi_wol_filter_reset(%struct.efx_nic* %15)
  %17 = load %struct.siena_nic_data*, %struct.siena_nic_data** %3, align 8
  %18 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.siena_nic_data*, %struct.siena_nic_data** %3, align 8
  %21 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_wake_from_d3(i32 %27, i32 1)
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @efx_mcdi_wol_filter_get_magic(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_mcdi_wol_filter_reset(%struct.efx_nic*) #1

declare dso_local i32 @pci_wake_from_d3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
