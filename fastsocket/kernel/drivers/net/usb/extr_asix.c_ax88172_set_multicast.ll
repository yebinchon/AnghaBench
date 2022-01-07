; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88172_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88172_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { %struct.dev_mc_list*, i32 }
%struct.usbnet = type { i32 }
%struct.asix_data = type { i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@AX_MAX_MCAST = common dso_local global i64 0, align 8
@AX_MCAST_FILTER_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AX_CMD_WRITE_MULTI_FILTER = common dso_local global i32 0, align 4
@AX_CMD_WRITE_RX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ax88172_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax88172_set_multicast(%struct.net_device* %0) #0 {
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
  store i32 140, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_PROMISC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %98

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFF_ALLMULTI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AX_MAX_MCAST, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %23
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* %5, align 4
  br label %97

39:                                               ; preds = %30
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %96

45:                                               ; preds = %39
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  %48 = load %struct.dev_mc_list*, %struct.dev_mc_list** %47, align 8
  store %struct.dev_mc_list* %48, %struct.dev_mc_list** %6, align 8
  %49 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %50 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @AX_MCAST_FILTER_SIZE, align 4
  %53 = call i32 @memset(i32* %51, i32 0, i32 %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %83, %45
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %64 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ether_crc(i32 %62, i32 %65)
  %67 = ashr i32 %66, 26
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 7
  %70 = shl i32 1, %69
  %71 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %72 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %70
  store i32 %79, i32* %77, align 4
  %80 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %81 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %80, i32 0, i32 0
  %82 = load %struct.dev_mc_list*, %struct.dev_mc_list** %81, align 8
  store %struct.dev_mc_list* %82, %struct.dev_mc_list** %6, align 8
  br label %83

83:                                               ; preds = %61
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %88 = load i32, i32* @AX_CMD_WRITE_MULTI_FILTER, align 4
  %89 = load i32, i32* @AX_MCAST_FILTER_SIZE, align 4
  %90 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %91 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @asix_write_cmd_async(%struct.usbnet* %87, i32 %88, i32 0, i32 0, i32 %89, i32* %92)
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, 16
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %86, %44
  br label %97

97:                                               ; preds = %96, %36
  br label %98

98:                                               ; preds = %97, %20
  %99 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %100 = load i32, i32* @AX_CMD_WRITE_RX_CTL, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @asix_write_cmd_async(%struct.usbnet* %99, i32 %100, i32 %101, i32 0, i32 0, i32* null)
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
