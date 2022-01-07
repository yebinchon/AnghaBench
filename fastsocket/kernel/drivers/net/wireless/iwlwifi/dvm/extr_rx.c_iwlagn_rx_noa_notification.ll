; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_noa_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_noa_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_wipan_noa_data = type { i32, i32* }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_wipan_noa_notification = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WLAN_OUI_WFA = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_WFA_P2P = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwlagn_rx_noa_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rx_noa_notification(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_device_cmd*, align 8
  %7 = alloca %struct.iwl_wipan_noa_data*, align 8
  %8 = alloca %struct.iwl_wipan_noa_data*, align 8
  %9 = alloca %struct.iwl_rx_packet*, align 8
  %10 = alloca %struct.iwl_wipan_noa_notification*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %6, align 8
  %13 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %14 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %13)
  store %struct.iwl_rx_packet* %14, %struct.iwl_rx_packet** %9, align 8
  %15 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %9, align 8
  %16 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.iwl_wipan_noa_notification*
  store %struct.iwl_wipan_noa_notification* %19, %struct.iwl_wipan_noa_notification** %10, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.iwl_wipan_noa_data* @rcu_dereference_protected(i32 %22, i32 1)
  store %struct.iwl_wipan_noa_data* %23, %struct.iwl_wipan_noa_data** %8, align 8
  %24 = load %struct.iwl_wipan_noa_notification*, %struct.iwl_wipan_noa_notification** %10, align 8
  %25 = getelementptr inbounds %struct.iwl_wipan_noa_notification, %struct.iwl_wipan_noa_notification* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %99

28:                                               ; preds = %3
  %29 = load %struct.iwl_wipan_noa_notification*, %struct.iwl_wipan_noa_notification** %10, align 8
  %30 = getelementptr inbounds %struct.iwl_wipan_noa_notification, %struct.iwl_wipan_noa_notification* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 6
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 3
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 3
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 16, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.iwl_wipan_noa_data* @kmalloc(i32 %44, i32 %45)
  store %struct.iwl_wipan_noa_data* %46, %struct.iwl_wipan_noa_data** %7, align 8
  %47 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %48 = icmp ne %struct.iwl_wipan_noa_data* %47, null
  br i1 %48, label %49, label %98

49:                                               ; preds = %28
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %54 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 2
  %60 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @WLAN_OUI_WFA, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @WLAN_OUI_WFA, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 255
  %74 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @WLAN_OUI_WFA, align 4
  %79 = ashr i32 %78, 0
  %80 = and i32 %79, 255
  %81 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %82 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %86 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %87 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %85, i32* %89, align 4
  %90 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %91 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 6
  %94 = load %struct.iwl_wipan_noa_notification*, %struct.iwl_wipan_noa_notification** %10, align 8
  %95 = getelementptr inbounds %struct.iwl_wipan_noa_notification, %struct.iwl_wipan_noa_notification* %94, i32 0, i32 0
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @memcpy(i32* %93, %struct.TYPE_2__* %95, i32 %96)
  br label %98

98:                                               ; preds = %49, %28
  br label %100

99:                                               ; preds = %3
  store %struct.iwl_wipan_noa_data* null, %struct.iwl_wipan_noa_data** %7, align 8
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %102 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %7, align 8
  %105 = call i32 @rcu_assign_pointer(i32 %103, %struct.iwl_wipan_noa_data* %104)
  %106 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %8, align 8
  %107 = icmp ne %struct.iwl_wipan_noa_data* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %8, align 8
  %110 = load i32, i32* @rcu_head, align 4
  %111 = call i32 @kfree_rcu(%struct.iwl_wipan_noa_data* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %100
  ret i32 0
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local %struct.iwl_wipan_noa_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.iwl_wipan_noa_data* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.iwl_wipan_noa_data*) #1

declare dso_local i32 @kfree_rcu(%struct.iwl_wipan_noa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
