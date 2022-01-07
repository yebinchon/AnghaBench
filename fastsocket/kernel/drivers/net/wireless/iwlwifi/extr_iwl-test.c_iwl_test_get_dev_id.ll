; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_get_dev_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_get_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"hw version: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Memory allocation fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IWL_TM_ATTR_DEVICE_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error sending msg : %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.nlattr**)* @iwl_test_get_dev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_get_dev_id(%struct.iwl_test* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_test*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %9 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IWL_DEBUG_INFO(%struct.TYPE_3__* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %20 = call %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test* %19, i32 20)
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 (%struct.TYPE_3__*, i8*, ...) @IWL_ERR(%struct.TYPE_3__* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* @IWL_TM_ATTR_DEVICE_ID, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %50

37:                                               ; preds = %30
  %38 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @iwl_test_reply(%struct.iwl_test* %38, %struct.sk_buff* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.iwl_test*, %struct.iwl_test** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (%struct.TYPE_3__*, i8*, ...) @IWL_ERR(%struct.TYPE_3__* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  store i32 0, i32* %3, align 4
  br label %55

50:                                               ; preds = %36
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %49, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local %struct.sk_buff* @iwl_test_alloc_reply(%struct.iwl_test*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @iwl_test_reply(%struct.iwl_test*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
