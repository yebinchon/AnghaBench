; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_essid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.assoc_request = type { i32, i32, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@ssid_buf = common dso_local global i32 0, align 4
@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"requested any SSID\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"requested SSID '%s'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ASSOC_FLAG_SSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @lbs_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.assoc_request*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.lbs_private*, %struct.lbs_private** %17, align 8
  store %struct.lbs_private* %18, %struct.lbs_private** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %24 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @ssid_buf, align 4
  %27 = call i32 @DECLARE_SSID_BUF(i32 %26)
  %28 = load i32, i32* @LBS_DEB_WEXT, align 4
  %29 = call i32 @lbs_deb_enter(i32 %28)
  %30 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %74

37:                                               ; preds = %4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @E2BIG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %74

44:                                               ; preds = %37
  %45 = bitcast i32* %22 to i32**
  %46 = mul nuw i64 4, %20
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32** %45, i32 0, i32 %47)
  %49 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %50 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %44
  br label %63

57:                                               ; preds = %53
  %58 = bitcast i32* %22 to i32**
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 (i32**, ...) @memcpy(i32** %58, i8* %59, i32 %60)
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %57, %56
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @lbs_deb_wext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @ssid_buf, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @print_ssid(i32 %69, i32* %22, i32 %70)
  %72 = call i32 (i8*, ...) @lbs_deb_wext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %66
  br label %74

74:                                               ; preds = %73, %41, %34
  %75 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %76 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %75, i32 0, i32 0
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %74
  %81 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %82 = call %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private* %81)
  store %struct.assoc_request* %82, %struct.assoc_request** %14, align 8
  %83 = load %struct.assoc_request*, %struct.assoc_request** %14, align 8
  %84 = icmp ne %struct.assoc_request* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %103

88:                                               ; preds = %80
  %89 = load %struct.assoc_request*, %struct.assoc_request** %14, align 8
  %90 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %89, i32 0, i32 2
  %91 = bitcast i32* %90 to i32**
  %92 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %93 = call i32 (i32**, ...) @memcpy(i32** %91, i32* %22, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.assoc_request*, %struct.assoc_request** %14, align 8
  %96 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @ASSOC_FLAG_SSID, align 4
  %98 = load %struct.assoc_request*, %struct.assoc_request** %14, align 8
  %99 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %98, i32 0, i32 1
  %100 = call i32 @set_bit(i32 %97, i32* %99)
  %101 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %102 = call i32 @lbs_postpone_association_work(%struct.lbs_private* %101)
  br label %103

103:                                              ; preds = %88, %85
  br label %104

104:                                              ; preds = %103, %74
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %109 = call i32 @lbs_cancel_association_work(%struct.lbs_private* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %112 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* @LBS_DEB_WEXT, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @lbs_deb_leave_args(i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %118)
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DECLARE_SSID_BUF(i32) #2

declare dso_local i32 @lbs_deb_enter(i32) #2

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @memcpy(i32**, ...) #2

declare dso_local i32 @lbs_deb_wext(i8*, ...) #2

declare dso_local i32 @print_ssid(i32, i32*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @lbs_postpone_association_work(%struct.lbs_private*) #2

declare dso_local i32 @lbs_cancel_association_work(%struct.lbs_private*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
