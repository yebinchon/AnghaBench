; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_set_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_set_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iw_scan_req = type { i32, i64 }

@ssid = common dso_local global i32 0, align 4
@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@IW_SCAN_THIS_ESSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set_scan, essid '%s'\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iw_scan_req*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @ssid, align 4
  %13 = call i32 @DECLARE_SSID_BUF(i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.lbs_private*, %struct.lbs_private** %15, align 8
  store %struct.lbs_private* %16, %struct.lbs_private** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @LBS_DEB_WEXT, align 4
  %18 = call i32 @lbs_deb_enter(i32 %17)
  %19 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %102

26:                                               ; preds = %4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @netif_running(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENETDOWN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %102

33:                                               ; preds = %26
  %34 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %35 = bitcast %union.iwreq_data* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 16
  br i1 %39, label %40, label %75

40:                                               ; preds = %33
  %41 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %42 = bitcast %union.iwreq_data* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IW_SCAN_THIS_ESSID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast i8* %49 to %struct.iw_scan_req*
  store %struct.iw_scan_req* %50, %struct.iw_scan_req** %11, align 8
  %51 = load %struct.iw_scan_req*, %struct.iw_scan_req** %11, align 8
  %52 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iw_scan_req*, %struct.iw_scan_req** %11, align 8
  %60 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @memcpy(i32 %58, i32 %61, i64 %64)
  %66 = load i32, i32* @ssid, align 4
  %67 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %71 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @print_ssid(i32 %66, i32 %69, i64 %72)
  %74 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %78

75:                                               ; preds = %40, %33
  %76 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %48
  %79 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %80 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %79, i32 0, i32 2
  %81 = call i32 @delayed_work_pending(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %88 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %87, i32 0, i32 2
  %89 = call i32 @msecs_to_jiffies(i32 50)
  %90 = call i32 @queue_delayed_work(i32 %86, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %93 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %92, i32 0, i32 0
  store i32 -1, i32* %93, align 8
  %94 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %95 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %98, %91
  br label %102

102:                                              ; preds = %101, %30, %23
  %103 = load i32, i32* @LBS_DEB_WEXT, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @lbs_deb_leave_args(i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @lbs_deb_wext(i8*, i32) #1

declare dso_local i32 @print_ssid(i32, i32, i64) #1

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
