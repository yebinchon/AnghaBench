; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_finalize_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_finalize_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_cmd_finalize_join = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.ieee80211_mgmt = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_FINALIZE_JOIN = common dso_local global i32 0, align 4
@MWL8K_FJ_BEACON_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i8*, i32, i32)* @mwl8k_cmd_finalize_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_finalize_join(%struct.ieee80211_hw* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_cmd_finalize_join*, align 8
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %15, %struct.ieee80211_mgmt** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mwl8k_cmd_finalize_join* @kzalloc(i32 24, i32 %16)
  store %struct.mwl8k_cmd_finalize_join* %17, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %18 = load %struct.mwl8k_cmd_finalize_join*, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %19 = icmp eq %struct.mwl8k_cmd_finalize_join* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %75

23:                                               ; preds = %4
  %24 = load i32, i32* @MWL8K_CMD_SET_FINALIZE_JOIN, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.mwl8k_cmd_finalize_join*, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_finalize_join, %struct.mwl8k_cmd_finalize_join* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = call i8* @cpu_to_le16(i32 24)
  %30 = load %struct.mwl8k_cmd_finalize_join*, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %31 = getelementptr inbounds %struct.mwl8k_cmd_finalize_join, %struct.mwl8k_cmd_finalize_join* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 1, %37 ]
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.mwl8k_cmd_finalize_join*, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %42 = getelementptr inbounds %struct.mwl8k_cmd_finalize_join, %struct.mwl8k_cmd_finalize_join* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ieee80211_hdrlen(i32 %46)
  %48 = sub nsw i32 %43, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %59

52:                                               ; preds = %38
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MWL8K_FJ_BEACON_MAXLEN, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @MWL8K_FJ_BEACON_MAXLEN, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %51
  %60 = load %struct.mwl8k_cmd_finalize_join*, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %61 = getelementptr inbounds %struct.mwl8k_cmd_finalize_join, %struct.mwl8k_cmd_finalize_join* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %64 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @memcpy(i32 %62, i32* %65, i32 %66)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %69 = load %struct.mwl8k_cmd_finalize_join*, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %70 = getelementptr inbounds %struct.mwl8k_cmd_finalize_join, %struct.mwl8k_cmd_finalize_join* %69, i32 0, i32 0
  %71 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %68, %struct.TYPE_4__* %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.mwl8k_cmd_finalize_join*, %struct.mwl8k_cmd_finalize_join** %10, align 8
  %73 = call i32 @kfree(%struct.mwl8k_cmd_finalize_join* %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %59, %20
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.mwl8k_cmd_finalize_join* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_finalize_join*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
