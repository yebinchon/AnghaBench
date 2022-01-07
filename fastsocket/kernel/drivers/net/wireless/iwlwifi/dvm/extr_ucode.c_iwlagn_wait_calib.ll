; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwlagn_wait_calib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwlagn_wait_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32 }
%struct.iwl_rx_packet = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_priv = type { i32 }
%struct.iwl_calib_hdr = type { i32 }

@CALIBRATION_RES_NOTIFICATION = common dso_local global i64 0, align 8
@CALIBRATION_COMPLETE_NOTIFICATION = common dso_local global i64 0, align 8
@FH_RSCSR_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to record calibration data %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet*, i8*)* @iwlagn_wait_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_wait_calib(%struct.iwl_notif_wait_data* %0, %struct.iwl_rx_packet* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_notif_wait_data*, align 8
  %6 = alloca %struct.iwl_rx_packet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca %struct.iwl_calib_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %5, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.iwl_priv*
  store %struct.iwl_priv* %12, %struct.iwl_priv** %8, align 8
  %13 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CALIBRATION_RES_NOTIFICATION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CALIBRATION_COMPLETE_NOTIFICATION, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  store i32 1, i32* %4, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.iwl_calib_hdr*
  store %struct.iwl_calib_hdr* %32, %struct.iwl_calib_hdr** %9, align 8
  %33 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load i32, i32* @FH_RSCSR_FRAME_SIZE_MSK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %44 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @iwl_calib_set(%struct.iwl_priv* %43, %struct.iwl_calib_hdr* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %28
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %50 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %9, align 8
  %51 = getelementptr inbounds %struct.iwl_calib_hdr, %struct.iwl_calib_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IWL_ERR(%struct.iwl_priv* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %28
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @iwl_calib_set(%struct.iwl_priv*, %struct.iwl_calib_hdr*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
