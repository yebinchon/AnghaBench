; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.lbs_private* }
%struct.lbs_private = type { i64 }

@LBS_DEB_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tx watch dog timeout\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@CMD_802_11_RSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lbs_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 1
  %6 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  store %struct.lbs_private* %6, %struct.lbs_private** %3, align 8
  %7 = load i32, i32* @LBS_DEB_TX, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = call i32 @lbs_send_tx_feedback(%struct.lbs_private* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %22 = call i32 @lbs_host_to_card_done(%struct.lbs_private* %21)
  %23 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %24 = load i32, i32* @CMD_802_11_RSSI, align 4
  %25 = call i32 @lbs_prepare_and_send_command(%struct.lbs_private* %23, i32 %24, i32 0, i32 0, i32 0, i32* null)
  %26 = load i32, i32* @LBS_DEB_TX, align 4
  %27 = call i32 @lbs_deb_leave(i32 %26)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @lbs_send_tx_feedback(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_host_to_card_done(%struct.lbs_private*) #1

declare dso_local i32 @lbs_prepare_and_send_command(%struct.lbs_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
