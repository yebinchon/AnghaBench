; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reconfigure_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reconfigure_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }

@EFX_REV_FALCON_B0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @falcon_reconfigure_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_reconfigure_port(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = call i64 @efx_nic_rev(%struct.efx_nic* %4)
  %6 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %7 = icmp sgt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %11 = call i64 @LOOPBACK_INTERNAL(%struct.efx_nic* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = call i32 @falcon_loopback_link_poll(%struct.efx_nic* %14)
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = bitcast {}** %20 to i32 (%struct.efx_nic*)**
  %22 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %21, align 8
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = call i32 %22(%struct.efx_nic* %23)
  br label %25

25:                                               ; preds = %16, %13
  %26 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %27 = call i32 @falcon_stop_nic_stats(%struct.efx_nic* %26)
  %28 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %29 = call i32 @falcon_deconfigure_mac_wrapper(%struct.efx_nic* %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = call i32 @falcon_reset_macs(%struct.efx_nic* %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.efx_nic*)**
  %37 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %36, align 8
  %38 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %39 = call i32 %37(%struct.efx_nic* %38)
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = call i32 @falcon_reconfigure_xmac(%struct.efx_nic* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %45 = call i32 @falcon_start_nic_stats(%struct.efx_nic* %44)
  %46 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %47 = call i32 @efx_link_status_changed(%struct.efx_nic* %46)
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.efx_nic*) #1

declare dso_local i32 @falcon_loopback_link_poll(%struct.efx_nic*) #1

declare dso_local i32 @falcon_stop_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @falcon_deconfigure_mac_wrapper(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reset_macs(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reconfigure_xmac(%struct.efx_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @falcon_start_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @efx_link_status_changed(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
