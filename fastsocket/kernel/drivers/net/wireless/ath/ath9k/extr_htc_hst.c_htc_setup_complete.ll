; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_setup_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_setup_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.htc_comp_msg = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate send buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_SETUP_COMPLETE_ID = common dso_local global i32 0, align 4
@HTC_OP_START_WAIT = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"HTC start timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @htc_setup_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_setup_complete(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htc_comp_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store i32 0, i32* %6, align 4
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
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_reserve(%struct.sk_buff* %20, i32 4)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @skb_put(%struct.sk_buff* %22, i32 4)
  %24 = inttoptr i64 %23 to %struct.htc_comp_msg*
  store %struct.htc_comp_msg* %24, %struct.htc_comp_msg** %5, align 8
  %25 = load i32, i32* @HTC_MSG_SETUP_COMPLETE_ID, align 4
  %26 = call i32 @cpu_to_be16(i32 %25)
  %27 = load %struct.htc_comp_msg*, %struct.htc_comp_msg** %5, align 8
  %28 = getelementptr inbounds %struct.htc_comp_msg, %struct.htc_comp_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @HTC_OP_START_WAIT, align 4
  %30 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %31 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ENDPOINT0, align 4
  %40 = call i32 @htc_issue_send(%struct.htc_target* %34, %struct.sk_buff* %35, i32 %38, i32 0, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %19
  br label %59

44:                                               ; preds = %19
  %45 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %46 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %45, i32 0, i32 1
  %47 = load i32, i32* @HZ, align 4
  %48 = call i32 @wait_for_completion_timeout(i32* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %53 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %64

58:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %64

59:                                               ; preds = %43
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %58, %51, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
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
