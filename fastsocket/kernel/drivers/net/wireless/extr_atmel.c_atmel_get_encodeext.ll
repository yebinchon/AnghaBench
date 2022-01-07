; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.atmel_private = type { i32, i64, i32*, i64*, i32 }
%struct.iw_encode_ext = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @atmel_get_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %15)
  store %struct.atmel_private* %16, %struct.atmel_private** %10, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.iw_point*
  store %struct.iw_point* %18, %struct.iw_point** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %20, %struct.iw_encode_ext** %12, align 8
  %21 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 16
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %120

32:                                               ; preds = %4
  %33 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %34 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %120

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %13, align 4
  br label %56

52:                                               ; preds = %32
  %53 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %54 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %60 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %62 = call i32 @memset(%struct.iw_encode_ext* %61, i32 0, i32 16)
  %63 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %64 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %69 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %70 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %72 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %74 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %75 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %119

78:                                               ; preds = %56
  %79 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %80 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @IW_ENCODE_ALG_WEP, align 4
  %85 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %86 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %120

90:                                               ; preds = %83
  %91 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %92 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %99 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %101 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %104 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %111 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @memcpy(i32 %102, i32 %109, i64 %112)
  %114 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %115 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %90, %67
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %87, %46, %29
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
