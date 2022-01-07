; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_missed_beacon_notif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_missed_beacon_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_missed_beacon_notif = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"missed bcn cnsq %d totl %d rcd %d expctd %d\0A\00", align 1
@STATUS_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwlagn_rx_missed_beacon_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rx_missed_beacon_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_missed_beacon_notif*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %6, align 8
  %9 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %10 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %9)
  store %struct.iwl_rx_packet* %10, %struct.iwl_rx_packet** %7, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_missed_beacon_notif*
  store %struct.iwl_missed_beacon_notif* %15, %struct.iwl_missed_beacon_notif** %8, align 8
  %16 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %3
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %26 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  %30 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  %34 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le32_to_cpu(i32 %36)
  %38 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %33, i64 %37, i64 %41)
  %43 = load i32, i32* @STATUS_SCANNING, align 4
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 1
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %24
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %50 = call i32 @iwl_init_sensitivity(%struct.iwl_priv* %49)
  br label %51

51:                                               ; preds = %48, %24
  br label %52

52:                                               ; preds = %51, %3
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_init_sensitivity(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
