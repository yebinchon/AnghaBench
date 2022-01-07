; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_genie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_genie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ipw2100_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i64, i32*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MAX_WPA_IE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_genie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_genie(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %10, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 0
  %17 = load %struct.libipw_device*, %struct.libipw_device** %16, align 8
  store %struct.libipw_device* %17, %struct.libipw_device** %11, align 8
  %18 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %19 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %95

25:                                               ; preds = %4
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_WPA_IE_LEN, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %34 = bitcast %union.iwreq_data* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %95

44:                                               ; preds = %38, %32
  %45 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %46 = bitcast %union.iwreq_data* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load i8*, i8** %9, align 8
  %52 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %53 = bitcast %union.iwreq_data* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kmemdup(i8* %51, i64 %55, i32 %56)
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %95

63:                                               ; preds = %50
  %64 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %65 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %70 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %72 = bitcast %union.iwreq_data* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %76 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %86

77:                                               ; preds = %44
  %78 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %79 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @kfree(i32* %80)
  %82 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %83 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %85 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %63
  %87 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %88 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %89 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %92 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ipw2100_wpa_assoc_frame(%struct.ipw2100_priv* %87, i32* %90, i64 %93)
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %86, %60, %41, %22
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ipw2100_wpa_assoc_frame(%struct.ipw2100_priv*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
