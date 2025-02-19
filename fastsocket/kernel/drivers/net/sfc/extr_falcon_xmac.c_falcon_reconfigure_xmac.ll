; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_reconfigure_xmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_reconfigure_xmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_reconfigure_xmac(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 0
  %6 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %5, align 8
  store %struct.falcon_nic_data* %6, %struct.falcon_nic_data** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = call i32 @falcon_reconfigure_xgxs_core(%struct.efx_nic* %7)
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = call i32 @falcon_reconfigure_xmac_core(%struct.efx_nic* %9)
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = call i32 @falcon_reconfigure_mac_wrapper(%struct.efx_nic* %11)
  %13 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %14 = call i32 @falcon_xmac_link_ok_retry(%struct.efx_nic* %13, i32 5)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %19 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %21 = call i32 @falcon_ack_status_intr(%struct.efx_nic* %20)
  ret i32 0
}

declare dso_local i32 @falcon_reconfigure_xgxs_core(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reconfigure_xmac_core(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reconfigure_mac_wrapper(%struct.efx_nic*) #1

declare dso_local i32 @falcon_xmac_link_ok_retry(%struct.efx_nic*, i32) #1

declare dso_local i32 @falcon_ack_status_intr(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
