; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_should_stop_adhoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_should_stop_adhoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.assoc_request = type { i64, i64, i32, i32, i32 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@LBS_CONNECTED = common dso_local global i64 0, align 8
@ASSOC_FLAG_MODE = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@ASSOC_FLAG_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @should_stop_adhoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_stop_adhoc(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.assoc_request*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %5, align 8
  %6 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LBS_CONNECTED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %24 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %27 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @lbs_ssid_cmp(i32 %18, i32 %22, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %66

32:                                               ; preds = %14
  %33 = load i32, i32* @ASSOC_FLAG_MODE, align 4
  %34 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %35 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %34, i32 0, i32 2
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %40 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IW_MODE_ADHOC, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %66

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* @ASSOC_FLAG_CHANNEL, align 4
  %48 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %49 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %48, i32 0, i32 2
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.assoc_request*, %struct.assoc_request** %5, align 8
  %54 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %66

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %65 = call i32 @lbs_deb_leave(i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %61, %44, %31, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i64 @lbs_ssid_cmp(i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
