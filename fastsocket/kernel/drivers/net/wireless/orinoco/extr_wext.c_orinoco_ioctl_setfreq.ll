; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i64, i32 }
%struct.orinoco_private = type { i64, i32, i32, %struct.hermes }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32*)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@HERMES_CMD_TEST = common dso_local global i32 0, align 4
@HERMES_TEST_SET_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @orinoco_ioctl_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_setfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hermes*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %17)
  store %struct.orinoco_private* %18, %struct.orinoco_private** %10, align 8
  store i32 -1, i32* %11, align 4
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %22 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %118

29:                                               ; preds = %4
  %30 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %31 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %36 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 1000
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %41 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  br label %65

43:                                               ; preds = %34, %29
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %48 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 6, %49
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* %14, align 4
  %54 = mul nsw i32 %53, 10
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %60 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sdiv i32 %61, %62
  %64 = call i32 @ieee80211_freq_to_dsss_chan(i32 %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %58, %39
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @NUM_CHANNELS, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %74 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 1
  %78 = shl i32 1, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %72, %68, %65
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %118

84:                                               ; preds = %72
  %85 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %86 = call i64 @orinoco_lock(%struct.orinoco_private* %85, i64* %12)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %118

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %94 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %96 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %91
  %101 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %102 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %101, i32 0, i32 3
  store %struct.hermes* %102, %struct.hermes** %16, align 8
  %103 = load %struct.hermes*, %struct.hermes** %16, align 8
  %104 = getelementptr inbounds %struct.hermes, %struct.hermes* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32 (%struct.hermes*, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32*)** %106, align 8
  %108 = load %struct.hermes*, %struct.hermes** %16, align 8
  %109 = load i32, i32* @HERMES_CMD_TEST, align 4
  %110 = load i32, i32* @HERMES_TEST_SET_CHANNEL, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = call i32 %107(%struct.hermes* %108, i32 %111, i32 %112, i32* null)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %100, %91
  %115 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %116 = call i32 @orinoco_unlock(%struct.orinoco_private* %115, i64* %12)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %88, %81, %26
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i32 @ieee80211_freq_to_dsss_chan(i32) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
