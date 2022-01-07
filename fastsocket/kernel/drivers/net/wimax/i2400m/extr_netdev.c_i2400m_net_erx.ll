; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_erx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_erx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64, i32, %struct.net_device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"(i2400m %p skb %p [%u] cs %d)\0A\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"ERX: BUG? CS type %u unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"ERX: receiving %d bytes to the network stack\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(i2400m %p skb %p [%u] cs %d) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_net_erx(%struct.i2400m* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %11 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %15 = call %struct.device* @i2400m_dev(%struct.i2400m* %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @d_fnstart(i32 2, %struct.device* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %17, %struct.sk_buff* %18, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %66 [
    i32 128, label %25
    i32 129, label %25
  ]

25:                                               ; preds = %3, %3
  %26 = load i32, i32* @ETH_P_IP, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %28 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ETH_HLEN, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i32, i32* @ETH_P_IP, align 4
  %37 = call i32 @cpu_to_be16(i32 %36)
  %38 = call i32 @i2400m_rx_fake_eth_header(%struct.net_device* %30, i64 %35, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i64, i64* @ETH_HLEN, align 8
  %41 = sub nsw i64 0, %40
  %42 = call i32 @skb_set_mac_header(%struct.sk_buff* %39, i64 %41)
  %43 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %44 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 3
  store %struct.net_device* %46, %struct.net_device** %48, align 8
  %49 = load i32, i32* @ETH_P_IP, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %70

66:                                               ; preds = %3
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %86

70:                                               ; preds = %25
  %71 = load %struct.device*, %struct.device** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @d_printf(i32 3, %struct.device* %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @d_dump(i32 4, %struct.device* %76, i64 %79, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @netif_rx_ni(%struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %70, %66
  %87 = load %struct.device*, %struct.device** %8, align 8
  %88 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @d_fnend(i32 2, %struct.device* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.i2400m* %88, %struct.sk_buff* %89, i32 %92, i32 %93)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @i2400m_rx_fake_eth_header(%struct.net_device*, i64, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i64, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
