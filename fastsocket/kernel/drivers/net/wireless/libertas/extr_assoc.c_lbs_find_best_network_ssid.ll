; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_find_best_network_ssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_find_best_network_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64 }
%struct.bss_descriptor = type { i64, i64, i32 }

@LBS_DEB_SCAN = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i64*, i64*, i64, i64*)* @lbs_find_best_network_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_find_best_network_ssid(%struct.lbs_private* %0, i64* %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bss_descriptor*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 -1, i32* %11, align 4
  %13 = load i32, i32* @LBS_DEB_SCAN, align 4
  %14 = call i32 @lbs_deb_enter(i32 %13)
  %15 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %18 = call i32 @lbs_scan_networks(%struct.lbs_private* %17, i32 1)
  %19 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %50

24:                                               ; preds = %5
  %25 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call %struct.bss_descriptor* @lbs_find_best_ssid_in_list(%struct.lbs_private* %25, i64 %26)
  store %struct.bss_descriptor* %27, %struct.bss_descriptor** %12, align 8
  %28 = load %struct.bss_descriptor*, %struct.bss_descriptor** %12, align 8
  %29 = icmp ne %struct.bss_descriptor* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.bss_descriptor*, %struct.bss_descriptor** %12, align 8
  %32 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i64*, i64** %7, align 8
  %37 = load %struct.bss_descriptor*, %struct.bss_descriptor** %12, align 8
  %38 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %37, i32 0, i32 2
  %39 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %40 = call i32 @memcpy(i64* %36, i32* %38, i32 %39)
  %41 = load %struct.bss_descriptor*, %struct.bss_descriptor** %12, align 8
  %42 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.bss_descriptor*, %struct.bss_descriptor** %12, align 8
  %46 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %10, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %35, %30, %24
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32, i32* @LBS_DEB_SCAN, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @lbs_deb_leave_args(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_scan_networks(%struct.lbs_private*, i32) #1

declare dso_local %struct.bss_descriptor* @lbs_find_best_ssid_in_list(%struct.lbs_private*, i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
