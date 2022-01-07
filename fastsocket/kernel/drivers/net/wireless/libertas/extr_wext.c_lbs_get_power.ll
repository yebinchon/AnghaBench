; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i64, i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64, i64 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@LBS802_11POWERMODECAM = common dso_local global i64 0, align 8
@LBS_DISCONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @lbs_get_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_get_power(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  store %struct.lbs_private* %12, %struct.lbs_private** %9, align 8
  %13 = load i32, i32* @LBS_DEB_WEXT, align 4
  %14 = call i32 @lbs_deb_enter(i32 %13)
  %15 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %16 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LBS802_11POWERMODECAM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LBS_DISCONNECTED, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %4
  %31 = phi i1 [ true, %4 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %34 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @LBS_DEB_WEXT, align 4
  %36 = call i32 @lbs_deb_leave(i32 %35)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
