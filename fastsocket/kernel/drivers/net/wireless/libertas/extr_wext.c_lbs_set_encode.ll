; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.assoc_request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ASSOC_FLAG_WEP_KEYS = common dso_local global i32 0, align 4
@ASSOC_FLAG_WEP_TX_KEYIDX = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@ASSOC_FLAG_SECINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @lbs_set_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.assoc_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.lbs_private*, %struct.lbs_private** %16, align 8
  store %struct.lbs_private* %17, %struct.lbs_private** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @LBS_DEB_WEXT, align 4
  %19 = call i32 @lbs_deb_enter(i32 %18)
  %20 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %24 = call %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private* %23)
  store %struct.assoc_request* %24, %struct.assoc_request** %11, align 8
  %25 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %26 = icmp ne %struct.assoc_request* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %128

30:                                               ; preds = %4
  %31 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %39 = call i32 @disable_wep(%struct.assoc_request* %38)
  %40 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %41 = call i32 @disable_wpa(%struct.assoc_request* %40)
  br label %128

42:                                               ; preds = %30
  %43 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %44 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %47 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @validate_key_index(i32 %45, i32 %50, i32* %13, i32* %12)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %128

57:                                               ; preds = %42
  %58 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %59 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %65 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %57
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %71, %68, %63
  %73 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %76 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @lbs_set_wep_key(%struct.assoc_request* %73, i8* %74, i64 %77, i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %128

84:                                               ; preds = %72
  %85 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %86 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* @ASSOC_FLAG_WEP_KEYS, align 4
  %91 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %92 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %91, i32 0, i32 0
  %93 = call i32 @set_bit(i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* @ASSOC_FLAG_WEP_TX_KEYIDX, align 4
  %99 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %100 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %99, i32 0, i32 0
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %94
  %103 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %104 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %111 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %112 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  br label %127

114:                                              ; preds = %102
  %115 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %123 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %124 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %114
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %83, %54, %37, %27
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i32, i32* @ASSOC_FLAG_SECINFO, align 4
  %133 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %134 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %133, i32 0, i32 0
  %135 = call i32 @set_bit(i32 %132, i32* %134)
  %136 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %137 = call i32 @lbs_postpone_association_work(%struct.lbs_private* %136)
  br label %141

138:                                              ; preds = %128
  %139 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %140 = call i32 @lbs_cancel_association_work(%struct.lbs_private* %139)
  br label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %143 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* @LBS_DEB_WEXT, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @lbs_deb_leave_args(i32 %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private*) #1

declare dso_local i32 @disable_wep(%struct.assoc_request*) #1

declare dso_local i32 @disable_wpa(%struct.assoc_request*) #1

declare dso_local i32 @validate_key_index(i32, i32, i32*, i32*) #1

declare dso_local i32 @lbs_set_wep_key(%struct.assoc_request*, i8*, i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_postpone_association_work(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cancel_association_work(%struct.lbs_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
