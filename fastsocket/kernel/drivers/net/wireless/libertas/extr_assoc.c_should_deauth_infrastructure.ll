; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_should_deauth_infrastructure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_should_deauth_infrastructure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.assoc_request = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LBS_CONNECTED = common dso_local global i64 0, align 8
@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@ASSOC_FLAG_SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Deauthenticating due to new SSID\0A\00", align 1
@ASSOC_FLAG_SECINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Deauthenticating due to new security\0A\00", align 1
@ASSOC_FLAG_BSSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Deauthenticating due to new BSSID\0A\00", align 1
@ASSOC_FLAG_CHANNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Deauthenticating due to channel switch\0A\00", align 1
@ASSOC_FLAG_MODE = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Deauthenticating due to leaving infra mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @should_deauth_infrastructure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_deauth_infrastructure(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.assoc_request*, align 8
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LBS_CONNECTED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

13:                                               ; preds = %2
  %14 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %15 = call i32 @lbs_deb_enter(i32 %14)
  %16 = load i32, i32* @ASSOC_FLAG_SSID, align 4
  %17 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %18 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %74

23:                                               ; preds = %13
  %24 = load i32, i32* @ASSOC_FLAG_SECINFO, align 4
  %25 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %26 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %35 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %74

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* @ASSOC_FLAG_BSSID, align 4
  %44 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %45 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %44, i32 0, i32 1
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %74

50:                                               ; preds = %42
  %51 = load i32, i32* @ASSOC_FLAG_CHANNEL, align 4
  %52 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %53 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %52, i32 0, i32 1
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %74

58:                                               ; preds = %50
  %59 = load i32, i32* @ASSOC_FLAG_MODE, align 4
  %60 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %61 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %66 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IW_MODE_INFRA, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %74

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %70, %56, %48, %39, %21
  %75 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @lbs_deb_leave_args(i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %12
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @lbs_deb_assoc(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
