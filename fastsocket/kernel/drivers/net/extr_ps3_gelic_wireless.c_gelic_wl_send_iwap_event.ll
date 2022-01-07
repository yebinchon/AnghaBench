; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ps3_gelic_wireless.c_gelic_wl_send_iwap_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ps3_gelic_wireless.c_gelic_wl_send_iwap_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_wl_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_wl_info*, i32*)* @gelic_wl_send_iwap_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_wl_send_iwap_event(%struct.gelic_wl_info* %0, i32* %1) #0 {
  %3 = alloca %struct.gelic_wl_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.iwreq_data, align 4
  store %struct.gelic_wl_info* %0, %struct.gelic_wl_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 @memset(%union.iwreq_data* %5, i32 0, i32 8)
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = bitcast %union.iwreq_data* %5 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = call i32 @memcpy(i32 %12, i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* @ARPHRD_ETHER, align 4
  %18 = bitcast %union.iwreq_data* %5 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %3, align 8
  %21 = call i32 @wl_port(%struct.gelic_wl_info* %20)
  %22 = call i32 @port_to_netdev(i32 %21)
  %23 = load i32, i32* @SIOCGIWAP, align 4
  %24 = call i32 @wireless_send_event(i32 %22, i32 %23, %union.iwreq_data* %5, i32* null)
  ret void
}

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @port_to_netdev(i32) #1

declare dso_local i32 @wl_port(%struct.gelic_wl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
