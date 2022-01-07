; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { %struct.dev_mc_list*, i32 }
%struct.usbnet = type { i32 }
%struct.asix_data = type { i32* }

@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@AX_RX_CTL_PRO = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@AX_MAX_MCAST = common dso_local global i64 0, align 8
@AX_RX_CTL_AMALL = common dso_local global i32 0, align 4
@AX_MCAST_FILTER_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AX_CMD_WRITE_MULTI_FILTER = common dso_local global i32 0, align 4
@AX_RX_CTL_AM = common dso_local global i32 0, align 4
@AX_CMD_WRITE_RX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @asix_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asix_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.asix_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_mc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.usbnet* @netdev_priv(%struct.net_device* %9)
  store %struct.usbnet* %10, %struct.usbnet** %3, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.asix_data*
  store %struct.asix_data* %13, %struct.asix_data** %4, align 8
  %14 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @AX_RX_CTL_PRO, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %102

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_ALLMULTI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AX_MAX_MCAST, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %25
  %39 = load i32, i32* @AX_RX_CTL_AMALL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %101

42:                                               ; preds = %32
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %100

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  %51 = load %struct.dev_mc_list*, %struct.dev_mc_list** %50, align 8
  store %struct.dev_mc_list* %51, %struct.dev_mc_list** %6, align 8
  %52 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %53 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @AX_MCAST_FILTER_SIZE, align 4
  %56 = call i32 @memset(i32* %54, i32 0, i32 %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %86, %48
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %67 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ether_crc(i32 %65, i32 %68)
  %70 = ashr i32 %69, 26
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 7
  %73 = shl i32 1, %72
  %74 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %75 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %73
  store i32 %82, i32* %80, align 4
  %83 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %84 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %83, i32 0, i32 0
  %85 = load %struct.dev_mc_list*, %struct.dev_mc_list** %84, align 8
  store %struct.dev_mc_list* %85, %struct.dev_mc_list** %6, align 8
  br label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %57

89:                                               ; preds = %57
  %90 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %91 = load i32, i32* @AX_CMD_WRITE_MULTI_FILTER, align 4
  %92 = load i32, i32* @AX_MCAST_FILTER_SIZE, align 4
  %93 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %94 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @asix_write_cmd_async(%struct.usbnet* %90, i32 %91, i32 0, i32 0, i32 %92, i32* %95)
  %97 = load i32, i32* @AX_RX_CTL_AM, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %89, %47
  br label %101

101:                                              ; preds = %100, %38
  br label %102

102:                                              ; preds = %101, %21
  %103 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %104 = load i32, i32* @AX_CMD_WRITE_RX_CTL, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @asix_write_cmd_async(%struct.usbnet* %103, i32 %104, i32 %105, i32 0, i32 0, i32* null)
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @asix_write_cmd_async(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
