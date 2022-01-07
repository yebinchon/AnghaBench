; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_adhoc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_adhoc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_ad_hoc_stop = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LBS_DEB_JOIN = common dso_local global i32 0, align 4
@CMD_802_11_AD_HOC_STOP = common dso_local global i32 0, align 4
@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_adhoc_stop(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ds_802_11_ad_hoc_stop, align 4
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load i32, i32* @LBS_DEB_JOIN, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = call i32 @memset(%struct.cmd_ds_802_11_ad_hoc_stop* %3, i32 0, i32 4)
  %8 = call i32 @cpu_to_le16(i32 4)
  %9 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_stop, %struct.cmd_ds_802_11_ad_hoc_stop* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %12 = load i32, i32* @CMD_802_11_AD_HOC_STOP, align 4
  %13 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %11, i32 %12, %struct.cmd_ds_802_11_ad_hoc_stop* %3)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %14)
  %16 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lbs_deb_leave_args(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_ad_hoc_stop*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_ad_hoc_stop*) #1

declare dso_local i32 @lbs_mac_event_disconnected(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
