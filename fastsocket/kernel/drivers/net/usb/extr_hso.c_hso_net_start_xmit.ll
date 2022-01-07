; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_net_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_net_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.hso_net = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32, %struct.TYPE_7__*, %struct.sk_buff* }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"len: %d/%d\00", align 1
@MUX_BULK_TX_BUF_SIZE = common dso_local global i32 0, align 4
@write_bulk_callback = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed mux_bulk_tx_urb %d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @hso_net_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_net_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hso_net*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.hso_net* @netdev_priv(%struct.net_device* %8)
  store %struct.hso_net* %9, %struct.hso_net** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %13 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call i32 @hso_get_activity(%struct.TYPE_11__* %14)
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %22 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %21, i32 0, i32 4
  store %struct.sk_buff* %20, %struct.sk_buff** %22, align 8
  %23 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DUMP1(i32 %27, i64 %30)
  %32 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %33 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcpy(i32 %34, i32 %37, i64 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @MUX_BULK_TX_BUF_SIZE, align 4
  %46 = call i32 @D1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %45)
  %47 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %48 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %51 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %56 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %61 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %60, i32 0, i32 3
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 127
  %66 = call i32 @usb_sndbulkpipe(i32 %59, i32 %65)
  %67 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %68 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @write_bulk_callback, align 4
  %74 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %75 = call i32 @usb_fill_bulk_urb(%struct.TYPE_10__* %49, i32 %54, i32 %66, i32 %69, i64 %72, i32 %73, %struct.hso_net* %74)
  %76 = load i32, i32* @URB_ZERO_PACKET, align 4
  %77 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %78 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 4
  %83 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %84 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call i32 @usb_submit_urb(%struct.TYPE_10__* %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %24
  %91 = load %struct.hso_net*, %struct.hso_net** %6, align 8
  %92 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @dev_warn(i32* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.net_device*, %struct.net_device** %5, align 8
  %105 = call i32 @netif_start_queue(%struct.net_device* %104)
  br label %125

106:                                              ; preds = %24
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load i32, i32* @jiffies, align 4
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %106, %90
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @dev_kfree_skb(%struct.sk_buff* %126)
  %128 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %19
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.hso_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @hso_get_activity(%struct.TYPE_11__*) #1

declare dso_local i32 @DUMP1(i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @D1(i8*, i64, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_10__*, i32, i32, i32, i64, i32, %struct.hso_net*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
