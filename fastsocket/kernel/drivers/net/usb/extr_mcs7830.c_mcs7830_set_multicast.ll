; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { %struct.dev_mc_list*, i32 }
%struct.usbnet = type { i32 }
%struct.mcs7830_data = type { i32, i32* }

@HIF_REG_CONFIG_TXENABLE = common dso_local global i32 0, align 4
@HIF_REG_CONFIG_ALLMULTICAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@HIF_REG_CONFIG_PROMISCIOUS = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MCS7830_MAX_MCAST = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@HIF_REG_MULTICAST_HASH = common dso_local global i32 0, align 4
@HIF_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mcs7830_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs7830_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.mcs7830_data*, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.usbnet* @netdev_priv(%struct.net_device* %8)
  store %struct.usbnet* %9, %struct.usbnet** %3, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.mcs7830_data*
  store %struct.mcs7830_data* %12, %struct.mcs7830_data** %4, align 8
  %13 = load i32, i32* @HIF_REG_CONFIG_TXENABLE, align 4
  %14 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %15 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @HIF_REG_CONFIG_ALLMULTICAST, align 4
  %17 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %18 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_PROMISC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @HIF_REG_CONFIG_PROMISCIOUS, align 4
  %29 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %30 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %107

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MCS7830_MAX_MCAST, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %33
  %47 = load i32, i32* @HIF_REG_CONFIG_ALLMULTICAST, align 4
  %48 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %49 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %106

52:                                               ; preds = %40
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %105

58:                                               ; preds = %52
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 2
  %61 = load %struct.dev_mc_list*, %struct.dev_mc_list** %60, align 8
  store %struct.dev_mc_list* %61, %struct.dev_mc_list** %5, align 8
  %62 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %63 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @memset(i32* %64, i32 0, i32 8)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %95, %58
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %66
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %76 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ether_crc(i32 %74, i32 %77)
  %79 = ashr i32 %78, 26
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 7
  %82 = shl i32 1, %81
  %83 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %84 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = ashr i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %82
  store i32 %91, i32* %89, align 4
  %92 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %93 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %92, i32 0, i32 0
  %94 = load %struct.dev_mc_list*, %struct.dev_mc_list** %93, align 8
  store %struct.dev_mc_list* %94, %struct.dev_mc_list** %5, align 8
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %66

98:                                               ; preds = %66
  %99 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %100 = load i32, i32* @HIF_REG_MULTICAST_HASH, align 4
  %101 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %102 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @mcs7830_set_reg_async(%struct.usbnet* %99, i32 %100, i32 8, i32* %103)
  br label %105

105:                                              ; preds = %98, %57
  br label %106

106:                                              ; preds = %105, %46
  br label %107

107:                                              ; preds = %106, %27
  %108 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %109 = load i32, i32* @HIF_REG_CONFIG, align 4
  %110 = load %struct.mcs7830_data*, %struct.mcs7830_data** %4, align 8
  %111 = getelementptr inbounds %struct.mcs7830_data, %struct.mcs7830_data* %110, i32 0, i32 0
  %112 = call i32 @mcs7830_set_reg_async(%struct.usbnet* %108, i32 %109, i32 1, i32* %111)
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @mcs7830_set_reg_async(%struct.usbnet*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
