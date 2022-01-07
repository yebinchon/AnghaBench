; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00config.c_rt2x00lib_config_intf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00config.c_rt2x00lib_config_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.rt2x00intf_conf*, i32)* }
%struct.rt2x00intf_conf = type { i32, i32, i32, i32 }
%struct.rt2x00_intf = type { i32 }

@TSF_SYNC_ADHOC = common dso_local global i32 0, align 4
@TSF_SYNC_AP_NONE = common dso_local global i32 0, align 4
@TSF_SYNC_INFRA = common dso_local global i32 0, align 4
@TSF_SYNC_NONE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CONFIG_UPDATE_TYPE = common dso_local global i32 0, align 4
@CONFIG_UPDATE_MAC = common dso_local global i32 0, align 4
@CONFIG_UPDATE_BSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_config_intf(%struct.rt2x00_dev* %0, %struct.rt2x00_intf* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.rt2x00_intf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rt2x00intf_conf, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %6, align 8
  store %struct.rt2x00_intf* %1, %struct.rt2x00_intf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %25 [
    i32 132, label %16
    i32 131, label %19
    i32 130, label %19
    i32 128, label %19
    i32 129, label %22
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* @TSF_SYNC_ADHOC, align 4
  %18 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  br label %28

19:                                               ; preds = %5, %5, %5
  %20 = load i32, i32* @TSF_SYNC_AP_NONE, align 4
  %21 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load i32, i32* @TSF_SYNC_INFRA, align 4
  %24 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  br label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @TSF_SYNC_NONE, align 4
  %27 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22, %19, %16
  %29 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32 %30, i32 0, i32 4)
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %36, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memset(i32 %42, i32 0, i32 4)
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %11, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %48, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @CONFIG_UPDATE_TYPE, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %52
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %65 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63, %52
  %69 = load i32, i32* @CONFIG_UPDATE_MAC, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %68, %63, %58
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %77 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %82 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80, %72
  %86 = load i32, i32* @CONFIG_UPDATE_BSSID, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %80, %75
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %91 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32 (%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.rt2x00intf_conf*, i32)*, i32 (%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.rt2x00intf_conf*, i32)** %95, align 8
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %98 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 %96(%struct.rt2x00_dev* %97, %struct.rt2x00_intf* %98, %struct.rt2x00intf_conf* %11, i32 %99)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
