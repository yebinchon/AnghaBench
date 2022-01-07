; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_stop_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_stop_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_stop_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_stop_all(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %3)
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %14, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %17 = call i32 %15(%struct.efx_nic* %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = call i32 @efx_stop_port(%struct.efx_nic* %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %21 = call i32 @efx_flush_all(%struct.efx_nic* %20)
  %22 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @netif_running(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %10
  %28 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @netif_device_present(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %27, %10
  %34 = phi i1 [ false, %10 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netif_tx_disable(i32 %39)
  %41 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %42 = call i32 @efx_stop_datapath(%struct.efx_nic* %41)
  br label %43

43:                                               ; preds = %33, %9
  ret void
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_flush_all(%struct.efx_nic*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @netif_device_present(i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @efx_stop_datapath(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
