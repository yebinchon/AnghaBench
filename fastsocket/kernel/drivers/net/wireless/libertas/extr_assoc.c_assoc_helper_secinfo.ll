; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_secinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.assoc_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@CMD_ACT_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get RSN status: %d\0A\00", align 1
@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @assoc_helper_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_helper_secinfo(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 0
  %12 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %13 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %12, i32 0, i32 0
  %14 = call i32 @memcpy(i32* %11, %struct.TYPE_2__* %13, i32 4)
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = call i32 @lbs_set_mac_control(%struct.lbs_private* %15)
  %17 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %18 = load i32, i32* @CMD_ACT_GET, align 4
  %19 = call i32 @lbs_cmd_802_11_enable_rsn(%struct.lbs_private* %17, i32 %18, i32* %7)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %27 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %33 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %46 = load i32, i32* @CMD_ACT_SET, align 4
  %47 = call i32 @lbs_cmd_802_11_enable_rsn(%struct.lbs_private* %45, i32 %46, i32* %6)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %43, %22
  %49 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @lbs_deb_leave_args(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @lbs_set_mac_control(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cmd_802_11_enable_rsn(%struct.lbs_private*, i32, i32*) #1

declare dso_local i32 @lbs_deb_assoc(i8*, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
