; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_send_specific_ssid_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_send_specific_ssid_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i32 }

@ssid_buf = common dso_local global i32 0, align 4
@LBS_DEB_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SSID '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_send_specific_ssid_scan(%struct.lbs_private* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @ssid_buf, align 4
  %9 = call i32 @DECLARE_SSID_BUF(i32 %8)
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @LBS_DEB_SCAN, align 4
  %11 = load i32, i32* @ssid_buf, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @print_ssid(i32 %11, i64* %12, i64 %13)
  %15 = call i32 @lbs_deb_enter_args(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @memcpy(i32 %22, i64* %23, i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %30 = call i32 @lbs_scan_networks(%struct.lbs_private* %29, i32 1)
  %31 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %37

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %35, %18
  %38 = load i32, i32* @LBS_DEB_SCAN, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @lbs_deb_leave_args(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @lbs_deb_enter_args(i32, i8*, i32) #1

declare dso_local i32 @print_ssid(i32, i64*, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @lbs_scan_networks(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
