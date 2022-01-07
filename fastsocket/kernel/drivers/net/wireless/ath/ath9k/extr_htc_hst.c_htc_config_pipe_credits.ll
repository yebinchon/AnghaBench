; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_config_pipe_credits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_config_pipe_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.htc_config_pipe_msg = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate send buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_CONFIG_PIPE_ID = common dso_local global i32 0, align 4
@USB_WLAN_TX_PIPE = common dso_local global i32 0, align 4
@HTC_OP_CONFIG_PIPE_CREDITS = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"HTC credit config timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @htc_config_pipe_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_config_pipe_credits(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htc_config_pipe_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sk_buff* @alloc_skb(i32 54, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_reserve(%struct.sk_buff* %20, i32 4)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @skb_put(%struct.sk_buff* %22, i32 12)
  %24 = inttoptr i64 %23 to %struct.htc_config_pipe_msg*
  store %struct.htc_config_pipe_msg* %24, %struct.htc_config_pipe_msg** %5, align 8
  %25 = load i32, i32* @HTC_MSG_CONFIG_PIPE_ID, align 4
  %26 = call i32 @cpu_to_be16(i32 %25)
  %27 = load %struct.htc_config_pipe_msg*, %struct.htc_config_pipe_msg** %5, align 8
  %28 = getelementptr inbounds %struct.htc_config_pipe_msg, %struct.htc_config_pipe_msg* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @USB_WLAN_TX_PIPE, align 4
  %30 = load %struct.htc_config_pipe_msg*, %struct.htc_config_pipe_msg** %5, align 8
  %31 = getelementptr inbounds %struct.htc_config_pipe_msg, %struct.htc_config_pipe_msg* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %33 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.htc_config_pipe_msg*, %struct.htc_config_pipe_msg** %5, align 8
  %36 = getelementptr inbounds %struct.htc_config_pipe_msg, %struct.htc_config_pipe_msg* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @HTC_OP_CONFIG_PIPE_CREDITS, align 4
  %38 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %39 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ENDPOINT0, align 4
  %48 = call i32 @htc_issue_send(%struct.htc_target* %42, %struct.sk_buff* %43, i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %19
  br label %67

52:                                               ; preds = %19
  %53 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %54 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %53, i32 0, i32 1
  %55 = load i32, i32* @HZ, align 4
  %56 = call i32 @wait_for_completion_timeout(i32* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %61 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %51
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %66, %59, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @htc_issue_send(%struct.htc_target*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
