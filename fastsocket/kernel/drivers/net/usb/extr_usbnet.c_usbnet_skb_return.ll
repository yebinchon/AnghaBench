; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_skb_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_skb_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }

@EVENT_RX_PAUSED = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"< rx, len %zu, type 0x%x\0A\00", align 1
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"netif_rx status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_skb_return(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load i32, i32* @EVENT_RX_PAUSED, align 4
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_queue_tail(i32* %13, %struct.sk_buff* %14)
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @eth_type_trans(%struct.sk_buff* %17, %struct.TYPE_5__* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %33
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = load i32, i32* @rx_status, align 4
  %45 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.usbnet*, i32, %struct.TYPE_5__*, i8*, i32, ...) @netif_dbg(%struct.usbnet* %43, i32 %44, %struct.TYPE_5__* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @netif_rx(%struct.sk_buff* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @NET_RX_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %16
  %67 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %68 = load i32, i32* @rx_err, align 4
  %69 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (%struct.usbnet*, i32, %struct.TYPE_5__*, i8*, i32, ...) @netif_dbg(%struct.usbnet* %67, i32 %68, %struct.TYPE_5__* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %11, %66, %16
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, %struct.TYPE_5__*, i8*, i32, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
