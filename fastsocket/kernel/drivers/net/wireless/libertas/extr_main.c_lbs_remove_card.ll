; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_remove_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_remove_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i32, %struct.net_device*, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"destroying worker thread\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"done destroying worker thread\0A\00", align 1
@LBS802_11POWERMODEMAX_PSP = common dso_local global i64 0, align 8
@LBS802_11POWERMODECAM = common dso_local global i64 0, align 8
@CMD_OPTION_WAITFORRSP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_remove_card(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %union.iwreq_data, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load i32, i32* @LBS_DEB_MAIN, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %11 = call i32 @lbs_remove_mesh(%struct.lbs_private* %10)
  %12 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %13 = call i32 @lbs_remove_rtap(%struct.lbs_private* %12)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %3, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 7
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 6
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 5
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = call i32 @lbs_deb_main(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @destroy_workqueue(i32 %29)
  %31 = call i32 @lbs_deb_main(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LBS802_11POWERMODEMAX_PSP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load i64, i64* @LBS802_11POWERMODECAM, align 8
  %39 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %42 = load i32, i32* @CMD_OPTION_WAITFORRSP, align 4
  %43 = call i32 @lbs_ps_wakeup(%struct.lbs_private* %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %1
  %45 = bitcast %union.iwreq_data* %4 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memset(i32 %47, i32 170, i32 %48)
  %50 = load i32, i32* @ARPHRD_ETHER, align 4
  %51 = bitcast %union.iwreq_data* %4 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %54 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %53, i32 0, i32 2
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  %56 = load i32, i32* @SIOCGIWAP, align 4
  %57 = call i32 @wireless_send_event(%struct.net_device* %55, i32 %56, %union.iwreq_data* %4, i32* null)
  %58 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %59 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kthread_stop(i32 %62)
  %64 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %65 = call i32 @lbs_free_adapter(%struct.lbs_private* %64)
  %66 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %67 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %66, i32 0, i32 2
  store %struct.net_device* null, %struct.net_device** %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 @free_netdev(%struct.net_device* %68)
  %70 = load i32, i32* @LBS_DEB_MAIN, align 4
  %71 = call i32 @lbs_deb_leave(i32 %70)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_remove_mesh(%struct.lbs_private*) #1

declare dso_local i32 @lbs_remove_rtap(%struct.lbs_private*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @lbs_deb_main(i8*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @lbs_ps_wakeup(%struct.lbs_private*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @lbs_free_adapter(%struct.lbs_private*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
