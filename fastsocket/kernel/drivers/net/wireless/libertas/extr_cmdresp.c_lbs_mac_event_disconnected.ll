; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_lbs_mac_event_disconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_lbs_mac_event_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, %struct.TYPE_4__, i64, i64, i32*, i32*, i32*, i32*, i32*, i64, i32*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@LBS_CONNECTED = common dso_local global i64 0, align 8
@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@LBS_DISCONNECTED = common dso_local global i64 0, align 8
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"disconnected, so exit PS mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_mac_event_disconnected(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %union.iwreq_data, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %5 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LBS_CONNECTED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %95

10:                                               ; preds = %1
  %11 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %12 = call i32 @lbs_deb_enter(i32 %11)
  %13 = bitcast %union.iwreq_data* %3 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memset(i32* %15, i32 0, i32 %16)
  %18 = load i32, i32* @ARPHRD_ETHER, align 4
  %19 = bitcast %union.iwreq_data* %3 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = call i32 @msleep_interruptible(i32 1000)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SIOCGIWAP, align 4
  %26 = call i32 @wireless_send_event(i32 %24, i32 %25, %union.iwreq_data* %3, i32* null)
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netif_stop_queue(i32 %29)
  %31 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netif_carrier_off(i32 %33)
  %35 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 11
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree_skb(i32* %37)
  %39 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 11
  store i32* null, i32** %40, align 8
  %41 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %42 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %41, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %44 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %43, i32 0, i32 9
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @memset(i32* %45, i32 0, i32 8)
  %47 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @memset(i32* %49, i32 0, i32 8)
  %51 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @memset(i32* %53, i32 0, i32 8)
  %55 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @memset(i32* %57, i32 0, i32 8)
  %59 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @memset(i32* %61, i32 0, i32 8)
  %63 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %66 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* @LBS_DISCONNECTED, align 8
  %68 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %71 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memset(i32* %72, i32 0, i32 %73)
  %75 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %76 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %79 = call i32 @memset(i32* %77, i32 0, i32 %78)
  %80 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %84 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %10
  %89 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %91 = call i32 @lbs_ps_wakeup(%struct.lbs_private* %90, i32 0)
  br label %92

92:                                               ; preds = %88, %10
  %93 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %94 = call i32 @lbs_deb_leave(i32 %93)
  br label %95

95:                                               ; preds = %92, %9
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @lbs_deb_cmd(i8*) #1

declare dso_local i32 @lbs_ps_wakeup(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
