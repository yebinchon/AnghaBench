; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_get_fw_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_get_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"uCode version raw: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Memory allocation fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IWL_TM_ATTR_FW_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error sending msg : %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.nlattr**)* @iwl_test_get_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_get_fw_ver(%struct.iwl_test* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_test*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %9 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %10 = call i32 @iwl_test_fw_ver(%struct.iwl_test* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @IWL_DEBUG_INFO(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %17 = call %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test* %16, i32 20)
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @IWL_ERR(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* @IWL_TM_ATTR_FW_VERSION, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @nla_put_u32(%struct.sk_buff* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %47

34:                                               ; preds = %27
  %35 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @iwl_test_reply(%struct.iwl_test* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i8*, ...) @IWL_ERR(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %52

47:                                               ; preds = %33
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* @EMSGSIZE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %46, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @iwl_test_fw_ver(%struct.iwl_test*) #1

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test*, i32) #1

declare dso_local i32 @IWL_ERR(i32, i8*, ...) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @iwl_test_reply(%struct.iwl_test*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
