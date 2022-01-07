; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.efx_nic*)* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)* }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Board sensor %s; shutting down PHY\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"reported fault\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@PHY_MODE_LOW_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_monitor(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 3
  %7 = call i32 @mutex_is_locked(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = call %struct.TYPE_6__* @falcon_board(%struct.efx_nic* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %16, align 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = call i32 %17(%struct.efx_nic* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = load i32, i32* @hw, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @netif_err(%struct.efx_nic* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @PHY_MODE_LOW_POWER, align 4
  %36 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = call i32 @__efx_reconfigure_port(%struct.efx_nic* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @WARN_ON(i32 %42)
  br label %44

44:                                               ; preds = %22, %1
  %45 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %46 = call i64 @LOOPBACK_INTERNAL(%struct.efx_nic* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %50 = call i32 @falcon_loopback_link_poll(%struct.efx_nic* %49)
  store i32 %50, i32* %3, align 4
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %55, align 8
  %57 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %58 = call i32 %56(%struct.efx_nic* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %64 = call i32 @falcon_stop_nic_stats(%struct.efx_nic* %63)
  %65 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %66 = call i32 @falcon_deconfigure_mac_wrapper(%struct.efx_nic* %65)
  %67 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %68 = call i32 @falcon_reset_macs(%struct.efx_nic* %67)
  %69 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %70 = call i32 @falcon_reconfigure_xmac(%struct.efx_nic* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %74 = call i32 @falcon_start_nic_stats(%struct.efx_nic* %73)
  %75 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %76 = call i32 @efx_link_status_changed(%struct.efx_nic* %75)
  br label %77

77:                                               ; preds = %62, %59
  %78 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %79 = call i32 @falcon_poll_xmac(%struct.efx_nic* %78)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_6__* @falcon_board(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i8*) #1

declare dso_local i32 @__efx_reconfigure_port(%struct.efx_nic*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.efx_nic*) #1

declare dso_local i32 @falcon_loopback_link_poll(%struct.efx_nic*) #1

declare dso_local i32 @falcon_stop_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @falcon_deconfigure_mac_wrapper(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reset_macs(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reconfigure_xmac(%struct.efx_nic*) #1

declare dso_local i32 @falcon_start_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @efx_link_status_changed(%struct.efx_nic*) #1

declare dso_local i32 @falcon_poll_xmac(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
