; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.assoc_request = type { i32, i64, i32 }
%struct.bss_descriptor = type { i32 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"BSSID %pM\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"ASSOC: WAP: BSSID %pM not found, cannot associate.\0A\00", align 1
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"ASSOC: lbs_try_associate(bssid) returned %d\0A\00", align 1
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @assoc_helper_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_helper_bssid(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bss_descriptor*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %8 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %9 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @lbs_deb_enter_args(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %13 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %14 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %17 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.bss_descriptor* @lbs_find_bssid_in_list(%struct.lbs_private* %12, i32 %15, i64 %18)
  store %struct.bss_descriptor* %19, %struct.bss_descriptor** %6, align 8
  %20 = load %struct.bss_descriptor*, %struct.bss_descriptor** %6, align 8
  %21 = icmp eq %struct.bss_descriptor* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %24 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %55

27:                                               ; preds = %2
  %28 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %29 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %28, i32 0, i32 2
  %30 = load %struct.bss_descriptor*, %struct.bss_descriptor** %6, align 8
  %31 = call i32 @memcpy(i32* %29, %struct.bss_descriptor* %30, i32 4)
  %32 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %33 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IW_MODE_INFRA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %39 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %40 = call i32 @lbs_try_associate(%struct.lbs_private* %38, %struct.assoc_request* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %54

43:                                               ; preds = %27
  %44 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %45 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IW_MODE_ADHOC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %51 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %52 = call i32 @lbs_adhoc_join(%struct.lbs_private* %50, %struct.assoc_request* %51)
  br label %53

53:                                               ; preds = %49, %43
  br label %54

54:                                               ; preds = %53, %37
  br label %55

55:                                               ; preds = %54, %22
  %56 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @lbs_deb_leave_args(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @lbs_deb_enter_args(i32, i8*, i32) #1

declare dso_local %struct.bss_descriptor* @lbs_find_bssid_in_list(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_deb_assoc(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.bss_descriptor*, i32) #1

declare dso_local i32 @lbs_try_associate(%struct.lbs_private*, %struct.assoc_request*) #1

declare dso_local i32 @lbs_adhoc_join(%struct.lbs_private*, %struct.assoc_request*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
