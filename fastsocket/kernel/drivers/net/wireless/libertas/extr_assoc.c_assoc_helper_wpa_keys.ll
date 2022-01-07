; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_wpa_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_wpa_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32 }
%struct.assoc_request = type { i32, i32, i32 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_UCAST_KEY = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_MCAST_KEY = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @assoc_helper_wpa_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_helper_wpa_keys(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %8 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %11 = call i32 @lbs_deb_enter(i32 %10)
  %12 = load i32, i32* @ASSOC_FLAG_WPA_UCAST_KEY, align 4
  %13 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %14 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @ASSOC_FLAG_WPA_MCAST_KEY, align 4
  %19 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %20 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = load i32, i32* @CMD_ACT_SET, align 4
  %24 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %25 = call i32 @lbs_cmd_802_11_key_material(%struct.lbs_private* %22, i32 %23, %struct.assoc_request* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %28 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %62

33:                                               ; preds = %29
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 1
  %36 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %37 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %36, i32 0, i32 2
  %38 = call i32 @memcpy(i32* %35, i32* %37, i32 4)
  %39 = load i32, i32* @ASSOC_FLAG_WPA_MCAST_KEY, align 4
  %40 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %41 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %33
  %45 = load i32, i32* @ASSOC_FLAG_WPA_UCAST_KEY, align 4
  %46 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %47 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %50 = load i32, i32* @CMD_ACT_SET, align 4
  %51 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %52 = call i32 @lbs_cmd_802_11_key_material(%struct.lbs_private* %49, i32 %50, %struct.assoc_request* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %55 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 0
  %58 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %59 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %58, i32 0, i32 1
  %60 = call i32 @memcpy(i32* %57, i32* %59, i32 4)
  br label %61

61:                                               ; preds = %44, %33
  br label %62

62:                                               ; preds = %61, %32
  %63 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @lbs_deb_leave_args(i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @lbs_cmd_802_11_key_material(%struct.lbs_private*, i32, %struct.assoc_request*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
