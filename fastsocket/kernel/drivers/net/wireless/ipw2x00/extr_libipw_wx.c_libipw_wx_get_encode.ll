; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_wx.c_libipw_wx_get_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_wx.c_libipw_wx_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i64, %struct.TYPE_2__, %struct.libipw_security }
%struct.TYPE_2__ = type { i32, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32 }
%struct.libipw_security = type { i32*, i32*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"GET_ENCODE\0A\00", align 1
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_wx_get_encode(%struct.libipw_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_point*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lib80211_crypt_data*, align 8
  %14 = alloca %struct.libipw_security*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_point*
  store %struct.iw_point* %16, %struct.iw_point** %10, align 8
  %17 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %18 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %17, i32 0, i32 2
  store %struct.libipw_security* %18, %struct.libipw_security** %14, align 8
  %19 = call i32 @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %21 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @WEP_KEYS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %110

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %12, align 4
  br label %42

37:                                               ; preds = %4
  %38 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %39 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %44 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %46, i64 %48
  %50 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %49, align 8
  store %struct.lib80211_crypt_data* %50, %struct.lib80211_crypt_data** %13, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %54 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.libipw_security*, %struct.libipw_security** %14, align 8
  %56 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %42
  %60 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %61 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %63 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %64 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %5, align 4
  br label %110

67:                                               ; preds = %42
  %68 = load %struct.libipw_security*, %struct.libipw_security** %14, align 8
  %69 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.libipw_security*, %struct.libipw_security** %14, align 8
  %77 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @memcpy(i8* %75, i32 %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %87 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %89 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %90 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %94 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %67
  %98 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %99 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %100 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %109

103:                                              ; preds = %67
  %104 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %105 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %106 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %97
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %59, %31
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @LIBIPW_DEBUG_WX(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
