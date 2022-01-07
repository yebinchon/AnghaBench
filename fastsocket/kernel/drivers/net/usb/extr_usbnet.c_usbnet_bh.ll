; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.skb_data = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"bogus skb state %d\0A\00", align 1
@EVENT_RX_KILL = common dso_local global i32 0, align 4
@EVENT_RX_HALT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rxqlen %d --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @usbnet_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbnet_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.skb_data*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.usbnet*
  store %struct.usbnet* %8, %struct.usbnet** %3, align 8
  br label %9

9:                                                ; preds = %43, %28, %22, %1
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 7
  %12 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_6__* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %9
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.skb_data*
  store %struct.skb_data* %18, %struct.skb_data** %5, align 8
  %19 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %20 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %35 [
    i32 129, label %22
    i32 128, label %28
    i32 130, label %28
  ]

22:                                               ; preds = %14
  %23 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %24 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %23, i32 0, i32 0
  store i32 130, i32* %24, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @rx_process(%struct.usbnet* %25, %struct.sk_buff* %26)
  br label %9

28:                                               ; preds = %14, %14
  %29 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %30 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_free_urb(i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @dev_kfree_skb(%struct.sk_buff* %33)
  br label %9

35:                                               ; preds = %14
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %40 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netdev_dbg(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35
  br label %9

44:                                               ; preds = %9
  %45 = load i32, i32* @EVENT_RX_KILL, align 4
  %46 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 4
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %59 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %57, %62
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %63, %67
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %72 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @wake_up(i64 %73)
  br label %75

75:                                               ; preds = %70, %53
  br label %169

76:                                               ; preds = %44
  %77 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @netif_running(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %168

82:                                               ; preds = %76
  %83 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %84 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @netif_device_present(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %168

88:                                               ; preds = %82
  %89 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %90 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @netif_carrier_ok(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %168

94:                                               ; preds = %88
  %95 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %96 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %95, i32 0, i32 5
  %97 = call i32 @timer_pending(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %168, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EVENT_RX_HALT, align 4
  %101 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %102 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %101, i32 0, i32 4
  %103 = call i32 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %168, label %105

105:                                              ; preds = %99
  %106 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %107 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %112 = call i32 @RX_QLEN(%struct.usbnet* %111)
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %154

114:                                              ; preds = %105
  %115 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call i32 @rx_alloc_submit(%struct.usbnet* %115, i32 %116)
  %118 = load i32, i32* @ENOLINK, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %169

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %125 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %123, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %122
  %130 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %131 = load i32, i32* @link, align 4
  %132 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %133 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %137 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @netif_dbg(%struct.usbnet* %130, i32 %131, i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %129, %122
  %142 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %143 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %147 = call i32 @RX_QLEN(%struct.usbnet* %146)
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %151 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %150, i32 0, i32 2
  %152 = call i32 @tasklet_schedule(i32* %151)
  br label %153

153:                                              ; preds = %149, %141
  br label %154

154:                                              ; preds = %153, %105
  %155 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %156 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %160 = call i64 @TX_QLEN(%struct.usbnet* %159)
  %161 = icmp slt i64 %158, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %164 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @netif_wake_queue(i32 %165)
  br label %167

167:                                              ; preds = %162, %154
  br label %168

168:                                              ; preds = %167, %99, %94, %88, %82, %76
  br label %169

169:                                              ; preds = %121, %168, %75
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_6__*) #1

declare dso_local i32 @rx_process(%struct.usbnet*, %struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i64) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @netif_device_present(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @RX_QLEN(%struct.usbnet*) #1

declare dso_local i32 @rx_alloc_submit(%struct.usbnet*, i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @TX_QLEN(%struct.usbnet*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
