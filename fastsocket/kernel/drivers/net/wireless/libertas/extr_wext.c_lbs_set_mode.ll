; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.assoc_request = type { i32, i64 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_MODE_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Invalid mode: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASSOC_FLAG_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Switching to mode: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i64*, i8*)* @lbs_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_mode(%struct.net_device* %0, %struct.iw_request_info* %1, i64* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.assoc_request*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  store %struct.lbs_private* %14, %struct.lbs_private** %10, align 8
  %15 = load i32, i32* @LBS_DEB_WEXT, align 4
  %16 = call i32 @lbs_deb_enter(i32 %15)
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IW_MODE_ADHOC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IW_MODE_INFRA, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IW_MODE_AUTO, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %68

37:                                               ; preds = %26, %21, %4
  %38 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %42 = call %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private* %41)
  store %struct.assoc_request* %42, %struct.assoc_request** %11, align 8
  %43 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %44 = icmp ne %struct.assoc_request* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %49 = call i32 @lbs_cancel_association_work(%struct.lbs_private* %48)
  br label %64

50:                                               ; preds = %37
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %54 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @ASSOC_FLAG_MODE, align 4
  %56 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %57 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %56, i32 0, i32 0
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %60 = call i32 @lbs_postpone_association_work(%struct.lbs_private* %59)
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %50, %45
  %65 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %66 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %31
  %69 = load i32, i32* @LBS_DEB_WEXT, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @lbs_deb_leave_args(i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_wext(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cancel_association_work(%struct.lbs_private*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_postpone_association_work(%struct.lbs_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
