; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i64, i16 }
%struct.zd1201 = type { i32 }

@ZD1201_RID_CNFOWNCHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @zd1201_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.zd1201* @netdev_priv(%struct.net_device* %13)
  store %struct.zd1201* %14, %struct.zd1201** %10, align 8
  store i16 0, i16* %11, align 2
  %15 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %16 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %21 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  store i16 %22, i16* %11, align 2
  br label %33

23:                                               ; preds = %4
  %24 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %25 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 8
  %27 = call signext i16 @ieee80211_freq_to_dsss_chan(i16 signext %26)
  store i16 %27, i16* %11, align 2
  %28 = load i16, i16* %11, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i16 0, i16* %11, align 2
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %35 = load i32, i32* @ZD1201_RID_CNFOWNCHANNEL, align 4
  %36 = load i16, i16* %11, align 2
  %37 = call i32 @zd1201_setconfig16(%struct.zd1201* %34, i32 %35, i16 signext %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %44 = call i32 @zd1201_mac_reset(%struct.zd1201* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local signext i16 @ieee80211_freq_to_dsss_chan(i16 signext) #1

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i16 signext) #1

declare dso_local i32 @zd1201_mac_reset(%struct.zd1201*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
