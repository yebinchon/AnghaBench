; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_associate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.assoc_request = type { i32, i32 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@ASSOC_FLAG_BSSID = common dso_local global i32 0, align 4
@bssid_any = common dso_local global i32 0, align 4
@bssid_off = common dso_local global i32 0, align 4
@ASSOC_FLAG_SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @assoc_helper_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_helper_associate(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load i32, i32* @ASSOC_FLAG_BSSID, align 4
  %10 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %11 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load i32, i32* @bssid_any, align 4
  %16 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %17 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @compare_ether_addr(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* @bssid_off, align 4
  %23 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %24 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @compare_ether_addr(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %30 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %31 = call i32 @assoc_helper_bssid(%struct.lbs_private* %29, %struct.assoc_request* %30)
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %21, %14
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ASSOC_FLAG_SSID, align 4
  %38 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %39 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %44 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %45 = call i32 @assoc_helper_essid(%struct.lbs_private* %43, %struct.assoc_request* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %36, %33
  %47 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @lbs_deb_leave_args(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @compare_ether_addr(i32, i32) #1

declare dso_local i32 @assoc_helper_bssid(%struct.lbs_private*, %struct.assoc_request*) #1

declare dso_local i32 @assoc_helper_essid(%struct.lbs_private*, %struct.assoc_request*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
