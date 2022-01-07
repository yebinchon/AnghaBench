; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm9601_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm9601_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.usbnet = type { i32 }

@DM_MCAST_SIZE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DM_MAX_MCAST = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@DM_MCAST_ADDR = common dso_local global i32 0, align 4
@DM_RX_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm9601_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9601_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32*, align 8
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
  store i32* %12, i32** %4, align 8
  store i32 49, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @DM_MCAST_SIZE, align 4
  %15 = call i32 @memset(i32* %13, i32 0, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @DM_MCAST_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 128
  store i32 %22, i32* %20, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 2
  store i32 %31, i32* %5, align 4
  br label %90

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IFF_ALLMULTI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DM_MAX_MCAST, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %32
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, 4
  store i32 %47, i32* %5, align 4
  br label %89

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %48
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = load %struct.dev_mc_list*, %struct.dev_mc_list** %55, align 8
  store %struct.dev_mc_list* %56, %struct.dev_mc_list** %6, align 8
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %81, %53
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %57
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %67 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ether_crc(i32 %65, i32 %68)
  %70 = ashr i32 %69, 26
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 7
  %73 = shl i32 1, %72
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %73
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %85 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %84, i32 0, i32 1
  %86 = load %struct.dev_mc_list*, %struct.dev_mc_list** %85, align 8
  store %struct.dev_mc_list* %86, %struct.dev_mc_list** %6, align 8
  br label %57

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %45
  br label %90

90:                                               ; preds = %89, %29
  %91 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %92 = load i32, i32* @DM_MCAST_ADDR, align 4
  %93 = load i32, i32* @DM_MCAST_SIZE, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @dm_write_async(%struct.usbnet* %91, i32 %92, i32 %93, i32* %94)
  %96 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %97 = load i32, i32* @DM_RX_CTRL, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dm_write_reg_async(%struct.usbnet* %96, i32 %97, i32 %98)
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_crc(i32, i32) #1

declare dso_local i32 @dm_write_async(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @dm_write_reg_async(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
