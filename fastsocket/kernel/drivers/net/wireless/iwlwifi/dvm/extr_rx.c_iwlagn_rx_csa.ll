; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_csa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_csa_notification = type { i64, i32 }
%struct.iwl_rxon_cmd = type { i64 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@STATUS_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CSA notif: channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CSA notif (fail) : channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwlagn_rx_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rx_csa(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.iwl_device_cmd*, align 8
  %8 = alloca %struct.iwl_rx_packet*, align 8
  %9 = alloca %struct.iwl_csa_notification*, align 8
  %10 = alloca %struct.iwl_rxon_context*, align 8
  %11 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %6, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %7, align 8
  %12 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %13 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %12)
  store %struct.iwl_rx_packet* %13, %struct.iwl_rx_packet** %8, align 8
  %14 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %15 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_csa_notification*
  store %struct.iwl_csa_notification* %18, %struct.iwl_csa_notification** %9, align 8
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 2
  %21 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %20, align 8
  %22 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %23 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %21, i64 %22
  store %struct.iwl_rxon_context* %23, %struct.iwl_rxon_context** %10, align 8
  %24 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %25 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %24, i32 0, i32 1
  %26 = bitcast i32* %25 to i8*
  %27 = bitcast i8* %26 to %struct.iwl_rxon_cmd*
  store %struct.iwl_rxon_cmd* %27, %struct.iwl_rxon_cmd** %11, align 8
  %28 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 1
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

34:                                               ; preds = %3
  %35 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %34
  %41 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %9, align 8
  %42 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %40
  %49 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %11, align 8
  %53 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %9, align 8
  %55 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %58 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %61 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %9, align 8
  %62 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @le16_to_cpu(i64 %63)
  %65 = call i32 @IWL_DEBUG_11H(%struct.iwl_priv* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %67 = call i32 @iwl_chswitch_done(%struct.iwl_priv* %66, i32 1)
  br label %77

68:                                               ; preds = %40, %34
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %70 = load %struct.iwl_csa_notification*, %struct.iwl_csa_notification** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_csa_notification, %struct.iwl_csa_notification* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @le16_to_cpu(i64 %72)
  %74 = call i32 @IWL_ERR(%struct.iwl_priv* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %76 = call i32 @iwl_chswitch_done(%struct.iwl_priv* %75, i32 0)
  br label %77

77:                                               ; preds = %68, %48
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_11H(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @iwl_chswitch_done(%struct.iwl_priv*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
