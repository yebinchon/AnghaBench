; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_send_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_send_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_rx_packet = type { i32 }

@FH_RSCSR_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Out of memory for message to user\0A\00", align 1
@IWL_TM_ATTR_COMMAND = common dso_local global i32 0, align 4
@IWL_TM_CMD_DEV2APP_UCODE_RX_PKT = common dso_local global i32 0, align 4
@IWL_TM_ATTR_UCODE_RX_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Ouch, overran buffer, check allocation!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_test*, %struct.iwl_rx_cmd_buffer*)* @iwl_test_send_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_test_send_rx(%struct.iwl_test* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_test*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iwl_rx_packet*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %8)
  store %struct.iwl_rx_packet* %9, %struct.iwl_rx_packet** %6, align 8
  %10 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load i32, i32* @FH_RSCSR_FRAME_SIZE_MSK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 20
  %23 = call %struct.sk_buff* @iwl_test_alloc_event(%struct.iwl_test* %20, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = icmp eq %struct.sk_buff* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IWL_ERR(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %56

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @IWL_TM_ATTR_COMMAND, align 4
  %34 = load i32, i32* @IWL_TM_CMD_DEV2APP_UCODE_RX_PKT, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @IWL_TM_ATTR_UCODE_RX_PKT, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %42 = call i64 @nla_put(%struct.sk_buff* %38, i32 %39, i32 %40, %struct.iwl_rx_packet* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %31
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @iwl_test_event(%struct.iwl_test* %46, %struct.sk_buff* %47)
  br label %56

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load %struct.iwl_test*, %struct.iwl_test** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IWL_ERR(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %49, %45, %26
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @iwl_test_alloc_event(%struct.iwl_test*, i32) #1

declare dso_local i32 @IWL_ERR(i32, i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.iwl_rx_packet*) #1

declare dso_local i32 @iwl_test_event(%struct.iwl_test*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
