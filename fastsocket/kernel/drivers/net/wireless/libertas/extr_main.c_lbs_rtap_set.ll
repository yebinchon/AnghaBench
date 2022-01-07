; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_rtap_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_rtap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lbs_private = type { i32, i64, i32*, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.lbs_private* }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@CMD_802_11_MONITOR_MODE = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@CMD_OPTION_WAITFORRSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lbs_rtap_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_rtap_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lbs_private*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.TYPE_4__* @to_net_dev(%struct.device* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  store %struct.lbs_private* %15, %struct.lbs_private** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %78

20:                                               ; preds = %4
  %21 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %22 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %5, align 4
  br label %115

29:                                               ; preds = %20
  %30 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %29
  %35 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %115

47:                                               ; preds = %39
  %48 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IW_MODE_INFRA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %55 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %60 = call i32 @lbs_cmd_80211_deauthenticate(%struct.lbs_private* %54, i32 %58, i32 %59)
  br label %71

61:                                               ; preds = %47
  %62 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IW_MODE_ADHOC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %69 = call i32 @lbs_adhoc_stop(%struct.lbs_private* %68)
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %53
  %72 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %73 = call i32 @lbs_add_rtap(%struct.lbs_private* %72)
  br label %74

74:                                               ; preds = %71, %29
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %105

78:                                               ; preds = %4
  %79 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %80 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @strlen(i8* %84)
  store i32 %85, i32* %5, align 4
  br label %115

86:                                               ; preds = %78
  %87 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %88 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %90 = call i32 @lbs_remove_rtap(%struct.lbs_private* %89)
  %91 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %92 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %97 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dev_kfree_skb_any(i32* %98)
  %100 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %101 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %86
  %103 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %104 = call i32 @lbs_host_to_card_done(%struct.lbs_private* %103)
  br label %105

105:                                              ; preds = %102, %74
  %106 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %107 = load i32, i32* @CMD_802_11_MONITOR_MODE, align 4
  %108 = load i32, i32* @CMD_ACT_SET, align 4
  %109 = load i32, i32* @CMD_OPTION_WAITFORRSP, align 4
  %110 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  %111 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %110, i32 0, i32 0
  %112 = call i32 @lbs_prepare_and_send_command(%struct.lbs_private* %106, i32 %107, i32 %108, i32 %109, i32 0, i32* %111)
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @strlen(i8* %113)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %105, %83, %44, %26
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_4__* @to_net_dev(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lbs_cmd_80211_deauthenticate(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_adhoc_stop(%struct.lbs_private*) #1

declare dso_local i32 @lbs_add_rtap(%struct.lbs_private*) #1

declare dso_local i32 @lbs_remove_rtap(%struct.lbs_private*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @lbs_host_to_card_done(%struct.lbs_private*) #1

declare dso_local i32 @lbs_prepare_and_send_command(%struct.lbs_private*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
