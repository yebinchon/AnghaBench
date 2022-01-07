; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_set_key_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_set_key_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_cmd_set_keys = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }

@KEY_WEP_DEFAULT = common dso_local global i32 0, align 4
@KEY_WEP_ADDR = common dso_local global i32 0, align 4
@KEY_TKIP_MIC_GROUP = common dso_local global i32 0, align 4
@KEY_TKIP_MIC_PAIRWISE = common dso_local global i32 0, align 4
@KEY_AES_GROUP = common dso_local global i32 0, align 4
@KEY_AES_PAIRWISE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown key cipher 0x%x\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.wl1251_cmd_set_keys*, i32, %struct.ieee80211_key_conf*, i32*)* @wl1251_set_key_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_set_key_type(%struct.wl1251* %0, %struct.wl1251_cmd_set_keys* %1, i32 %2, %struct.ieee80211_key_conf* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1251*, align 8
  %8 = alloca %struct.wl1251_cmd_set_keys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_key_conf*, align 8
  %11 = alloca i32*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %7, align 8
  store %struct.wl1251_cmd_set_keys* %1, %struct.wl1251_cmd_set_keys** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %13 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %69 [
    i32 128, label %15
    i32 129, label %15
    i32 130, label %33
    i32 131, label %51
  ]

15:                                               ; preds = %5, %5
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @is_broadcast_ether_addr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @KEY_WEP_DEFAULT, align 4
  %21 = load %struct.wl1251_cmd_set_keys*, %struct.wl1251_cmd_set_keys** %8, align 8
  %22 = getelementptr inbounds %struct.wl1251_cmd_set_keys, %struct.wl1251_cmd_set_keys* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @KEY_WEP_ADDR, align 4
  %25 = load %struct.wl1251_cmd_set_keys*, %struct.wl1251_cmd_set_keys** %8, align 8
  %26 = getelementptr inbounds %struct.wl1251_cmd_set_keys, %struct.wl1251_cmd_set_keys* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %76

33:                                               ; preds = %5
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @is_broadcast_ether_addr(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @KEY_TKIP_MIC_GROUP, align 4
  %39 = load %struct.wl1251_cmd_set_keys*, %struct.wl1251_cmd_set_keys** %8, align 8
  %40 = getelementptr inbounds %struct.wl1251_cmd_set_keys, %struct.wl1251_cmd_set_keys* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @KEY_TKIP_MIC_PAIRWISE, align 4
  %43 = load %struct.wl1251_cmd_set_keys*, %struct.wl1251_cmd_set_keys** %8, align 8
  %44 = getelementptr inbounds %struct.wl1251_cmd_set_keys, %struct.wl1251_cmd_set_keys* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %50 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %76

51:                                               ; preds = %5
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @is_broadcast_ether_addr(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @KEY_AES_GROUP, align 4
  %57 = load %struct.wl1251_cmd_set_keys*, %struct.wl1251_cmd_set_keys** %8, align 8
  %58 = getelementptr inbounds %struct.wl1251_cmd_set_keys, %struct.wl1251_cmd_set_keys* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @KEY_AES_PAIRWISE, align 4
  %61 = load %struct.wl1251_cmd_set_keys*, %struct.wl1251_cmd_set_keys** %8, align 8
  %62 = getelementptr inbounds %struct.wl1251_cmd_set_keys, %struct.wl1251_cmd_set_keys* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %65 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %76

69:                                               ; preds = %5
  %70 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @wl1251_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %63, %45, %27
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %69
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @wl1251_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
