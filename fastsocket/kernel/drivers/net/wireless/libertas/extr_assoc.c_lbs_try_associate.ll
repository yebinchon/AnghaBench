; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_try_associate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_try_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.assoc_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@RADIO_PREAMBLE_LONG = common dso_local global i32 0, align 4
@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@RADIO_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@CMD_802_11_ASSOCIATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @lbs_try_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_try_associate(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  %7 = load i32, i32* @RADIO_PREAMBLE_LONG, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 150994944
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %17 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @lbs_set_authentication(%struct.lbs_private* %15, i32 %19, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %58

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %38 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @RADIO_PREAMBLE_SHORT, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %36, %29
  %47 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @lbs_set_radio(%struct.lbs_private* %47, i32 %48, i32 1)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %58

53:                                               ; preds = %46
  %54 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %55 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %56 = load i32, i32* @CMD_802_11_ASSOCIATE, align 4
  %57 = call i32 @lbs_associate(%struct.lbs_private* %54, %struct.assoc_request* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %52, %27
  %59 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @lbs_deb_leave_args(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_set_authentication(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_set_radio(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_associate(%struct.lbs_private*, %struct.assoc_request*, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
