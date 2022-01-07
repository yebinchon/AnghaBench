; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_disable_wpa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_disable_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_request = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@KEY_INFO_WPA_MCAST = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_MCAST_KEY = common dso_local global i32 0, align 4
@KEY_INFO_WPA_UNICAST = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_UCAST_KEY = common dso_local global i32 0, align 4
@ASSOC_FLAG_SECINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assoc_request*)* @disable_wpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_wpa(%struct.assoc_request* %0) #0 {
  %2 = alloca %struct.assoc_request*, align 8
  store %struct.assoc_request* %0, %struct.assoc_request** %2, align 8
  %3 = load i32, i32* @LBS_DEB_WEXT, align 4
  %4 = call i32 @lbs_deb_enter(i32 %3)
  %5 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %6 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %5, i32 0, i32 3
  %7 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 4)
  %8 = load i32, i32* @KEY_INFO_WPA_MCAST, align 4
  %9 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %10 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @ASSOC_FLAG_WPA_MCAST_KEY, align 4
  %13 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %14 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %17 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %16, i32 0, i32 2
  %18 = call i32 @memset(%struct.TYPE_4__* %17, i32 0, i32 4)
  %19 = load i32, i32* @KEY_INFO_WPA_UNICAST, align 4
  %20 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %21 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @ASSOC_FLAG_WPA_UCAST_KEY, align 4
  %24 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %25 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %28 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %31 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @ASSOC_FLAG_SECINFO, align 4
  %34 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %35 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %34, i32 0, i32 0
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load i32, i32* @LBS_DEB_WEXT, align 4
  %38 = call i32 @lbs_deb_leave(i32 %37)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
