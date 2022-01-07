; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_poll_xmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_poll_xmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__, %struct.falcon_nic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.falcon_nic_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @falcon_poll_xmac(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 1
  %6 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %5, align 8
  store %struct.falcon_nic_data* %6, %struct.falcon_nic_data** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = call i32 @EFX_WORKAROUND_5147(%struct.efx_nic* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %18 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10, %1
  br label %32

22:                                               ; preds = %16
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = call i32 @falcon_xmac_link_ok_retry(%struct.efx_nic* %23, i32 1)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %29 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = call i32 @falcon_ack_status_intr(%struct.efx_nic* %30)
  br label %32

32:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @EFX_WORKAROUND_5147(%struct.efx_nic*) #1

declare dso_local i32 @falcon_xmac_link_ok_retry(%struct.efx_nic*, i32) #1

declare dso_local i32 @falcon_ack_status_intr(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
