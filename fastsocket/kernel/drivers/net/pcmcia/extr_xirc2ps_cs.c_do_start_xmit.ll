; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_do_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_do_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"do_start_xmit(skb=%p, dev=%p) len=%u\0A\00", align 1
@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@XIRCREG0_TRS = common dso_local global i64 0, align 8
@XIRCREG0_TSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: avail. tx space=%u%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" (okay)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" (not enough)\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@XIRCREG_EDP = common dso_local global i64 0, align 8
@XIRCREG_CR = common dso_local global i64 0, align 8
@TransmitPacket = common dso_local global i32 0, align 4
@EnableIntr = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @do_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (i32, i8*, %struct.sk_buff*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %19, %struct.net_device* %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @ETH_ZLEN, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @ETH_ZLEN, align 4
  %29 = call i64 @skb_padto(%struct.sk_buff* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %130

33:                                               ; preds = %26
  %34 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %2
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netif_stop_queue(%struct.net_device* %36)
  %38 = call i32 @SelectPage(i32 0)
  %39 = load i64, i64* @XIRCREG0_TRS, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %41, 2
  %43 = call i32 @PutWord(i64 %39, i64 %42)
  %44 = load i32, i32* @XIRCREG0_TSO, align 4
  %45 = call i32 @GetWord(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 32768
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 32767
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, 2
  %52 = load i32, i32* %9, align 4
  %53 = icmp ult i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 0
  %59 = add nsw i32 2, %58
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.sk_buff*
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %70 = call i32 (i32, i8*, %struct.sk_buff*, ...) @DEBUG(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %64, i32 %65, i8* %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %35
  %74 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %74, i32* %3, align 4
  br label %130

75:                                               ; preds = %35
  %76 = load i64, i64* @XIRCREG_EDP, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = call i32 @PutWord(i64 %76, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* @XIRCREG_EDP, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = lshr i32 %87, 1
  %89 = call i32 @outsw(i64 %83, i32* %86, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %75
  %94 = load i64, i64* @XIRCREG_EDP, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sub i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @PutByte(i64 %94, i32 %102)
  br label %104

104:                                              ; preds = %93, %75
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i64, i64* @XIRCREG_CR, align 8
  %111 = load i32, i32* @TransmitPacket, align 4
  %112 = load i32, i32* @EnableIntr, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @PutByte(i64 %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = call i32 @dev_kfree_skb(%struct.sk_buff* %116)
  %118 = load i32, i32* @jiffies, align 4
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, %121
  store i32 %126, i32* %124, align 4
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i32 @netif_start_queue(%struct.net_device* %127)
  %129 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %115, %73, %31
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, %struct.sk_buff*, ...) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @PutWord(i64, i64) #1

declare dso_local i32 @GetWord(i32) #1

declare dso_local i32 @outsw(i64, i32*, i32) #1

declare dso_local i32 @PutByte(i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
