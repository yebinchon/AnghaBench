; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_is_eapol_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_is_eapol_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.libipw_hdr_3addr = type { i32, i32, i32 }

@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_device*, %struct.sk_buff*)* @libipw_is_eapol_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_is_eapol_frame(%struct.libipw_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.libipw_hdr_3addr*, align 8
  %10 = alloca i32*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %12 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 24
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to %struct.libipw_hdr_3addr*
  store %struct.libipw_hdr_3addr* %23, %struct.libipw_hdr_3addr** %9, align 8
  %24 = load %struct.libipw_hdr_3addr*, %struct.libipw_hdr_3addr** %9, align 8
  %25 = getelementptr inbounds %struct.libipw_hdr_3addr, %struct.libipw_hdr_3addr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %30 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %19
  %36 = load %struct.libipw_hdr_3addr*, %struct.libipw_hdr_3addr** %9, align 8
  %37 = getelementptr inbounds %struct.libipw_hdr_3addr, %struct.libipw_hdr_3addr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ether_addr_equal(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.libipw_hdr_3addr*, %struct.libipw_hdr_3addr** %9, align 8
  %46 = getelementptr inbounds %struct.libipw_hdr_3addr, %struct.libipw_hdr_3addr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ether_addr_equal(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %74

54:                                               ; preds = %44, %35, %19
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %57 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.libipw_hdr_3addr*, %struct.libipw_hdr_3addr** %9, align 8
  %64 = getelementptr inbounds %struct.libipw_hdr_3addr, %struct.libipw_hdr_3addr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ether_addr_equal(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %73

72:                                               ; preds = %62, %54
  store i32 0, i32* %3, align 4
  br label %98

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 32
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %98

80:                                               ; preds = %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 24
  store i32* %84, i32** %10, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @ETH_P_PAE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %98

97:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %96, %79, %72, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
