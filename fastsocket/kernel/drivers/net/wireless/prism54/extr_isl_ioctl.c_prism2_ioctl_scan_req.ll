; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism2_ioctl_scan_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism2_ioctl_scan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.prism2_hostapd_param = type { i32 }
%struct.iw_request_info = type { i64, i32 }
%struct.obj_bsslist = type { i32*, i64 }
%union.oid_res_t = type { %struct.obj_bsslist* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@PRV_STATE_INIT = common dso_local global i64 0, align 8
@DOT11_OID_NOISEFLOOR = common dso_local global i32 0, align 4
@DOT11_OID_BSSLIST = common dso_local global i32 0, align 4
@PRISM54_HOSTAPD = common dso_local global i32 0, align 4
@IW_MAX_AP = common dso_local global i32 0, align 4
@IW_SCAN_MAX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.prism2_hostapd_param*)* @prism2_ioctl_scan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_scan_req(%struct.net_device* %0, %struct.prism2_hostapd_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.prism2_hostapd_param*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iw_request_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.obj_bsslist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.oid_res_t, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.prism2_hostapd_param* %1, %struct.prism2_hostapd_param** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32* @netdev_priv(%struct.net_device* %15)
  store i32* %16, i32** %6, align 8
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @islpci_get_state(i32* %17)
  %19 = load i64, i64* @PRV_STATE_INIT, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @DOT11_OID_NOISEFLOOR, align 4
  %25 = call i32 @mgt_get_request(i32* %23, i32 %24, i32 0, i32* null, %union.oid_res_t* %14)
  store i32 %25, i32* %9, align 4
  %26 = bitcast %union.oid_res_t* %14 to i32*
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @DOT11_OID_BSSLIST, align 4
  %30 = call i32 @mgt_get_request(i32* %28, i32 %29, i32 0, i32* null, %union.oid_res_t* %14)
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = bitcast %union.oid_res_t* %14 to %struct.obj_bsslist**
  %34 = load %struct.obj_bsslist*, %struct.obj_bsslist** %33, align 8
  store %struct.obj_bsslist* %34, %struct.obj_bsslist** %10, align 8
  %35 = load i32, i32* @PRISM54_HOSTAPD, align 4
  %36 = getelementptr inbounds %struct.iw_request_info, %struct.iw_request_info* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.iw_request_info, %struct.iw_request_info* %7, i32 0, i32 0
  store i64 0, i64* %37, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %62, %22
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IW_MAX_AP, align 4
  %41 = load %struct.obj_bsslist*, %struct.obj_bsslist** %10, align 8
  %42 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @min(i32 %40, i32 %44)
  %46 = icmp slt i32 %39, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %38
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.obj_bsslist*, %struct.obj_bsslist** %10, align 8
  %55 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @prism54_translate_bss(%struct.net_device* %48, %struct.iw_request_info* %7, i8* %49, i8* %53, i32* %59, i32 %60)
  store i8* %61, i8** %13, align 8
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.obj_bsslist*, %struct.obj_bsslist** %10, align 8
  %67 = call i32 @kfree(%struct.obj_bsslist* %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @islpci_get_state(i32*) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i32, i32*, %union.oid_res_t*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @prism54_translate_bss(%struct.net_device*, %struct.iw_request_info*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.obj_bsslist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
