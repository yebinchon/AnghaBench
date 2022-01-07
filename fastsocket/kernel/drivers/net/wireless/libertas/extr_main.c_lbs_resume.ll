; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i64, i64 }

@LBS_DEB_FW = common dso_local global i32 0, align 4
@CMD_802_11_RSSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_resume(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %3 = load i32, i32* @LBS_DEB_FW, align 4
  %4 = call i32 @lbs_deb_enter(i32 %3)
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %8 = load i32, i32* @CMD_802_11_RSSI, align 4
  %9 = call i32 @lbs_prepare_and_send_command(%struct.lbs_private* %7, i32 %8, i32 0, i32 0, i32 0, i32* null)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @netif_device_attach(i64 %12)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @netif_device_attach(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @LBS_DEB_FW, align 4
  %25 = call i32 @lbs_deb_leave(i32 %24)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_prepare_and_send_command(%struct.lbs_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @netif_device_attach(i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
