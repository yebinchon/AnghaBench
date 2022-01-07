; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_event_expired_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_event_expired_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sta_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IWEVEXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sta_info*)* @hostap_event_expired_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_event_expired_sta(%struct.net_device* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %union.iwreq_data, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %6 = call i32 @memset(%union.iwreq_data* %5, i32 0, i32 8)
  %7 = bitcast %union.iwreq_data* %5 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = call i32 @memcpy(i32 %9, i32 %12, i32 %13)
  %15 = load i32, i32* @ARPHRD_ETHER, align 4
  %16 = bitcast %union.iwreq_data* %5 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load i32, i32* @IWEVEXPIRED, align 4
  %20 = call i32 @wireless_send_event(%struct.net_device* %18, i32 %19, %union.iwreq_data* %5, i32* null)
  ret void
}

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
