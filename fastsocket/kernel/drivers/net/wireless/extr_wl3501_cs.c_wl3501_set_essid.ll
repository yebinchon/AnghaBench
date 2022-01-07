; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_set_essid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.wl3501_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IW_MGMT_INFO_ELEMENT_SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @wl3501_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_set_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wl3501_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.wl3501_card* @netdev_priv(%struct.net_device* %10)
  store %struct.wl3501_card* %11, %struct.wl3501_card** %9, align 8
  %12 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %13 = bitcast %union.iwreq_data* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i32, i32* @IW_MGMT_INFO_ELEMENT_SSID, align 4
  %19 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %20 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %8, align 8
  %23 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %24 = bitcast %union.iwreq_data* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iw_set_mgmt_info_element(i32 %18, i32* %21, i8* %22, i32 %26)
  br label %34

28:                                               ; preds = %4
  %29 = load i32, i32* @IW_MGMT_INFO_ELEMENT_SSID, align 4
  %30 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %31 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @iw_set_mgmt_info_element(i32 %29, i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %34

34:                                               ; preds = %28, %17
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @wl3501_reset(%struct.net_device* %35)
  ret i32 %36
}

declare dso_local %struct.wl3501_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iw_set_mgmt_info_element(i32, i32*, i8*, i32) #1

declare dso_local i32 @wl3501_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
