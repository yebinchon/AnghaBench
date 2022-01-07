; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_rfc1201.c_type_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_rfc1201.c_type_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.archdr = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.arc_rfc1201 }
%struct.arc_rfc1201 = type { i32 }

@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@RFC1201_HDR_SIZE = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @type_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_trans(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.archdr*, align 8
  %7 = alloca %struct.arc_rfc1201*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.archdr*
  store %struct.archdr* %12, %struct.archdr** %6, align 8
  %13 = load %struct.archdr*, %struct.archdr** %6, align 8
  %14 = getelementptr inbounds %struct.archdr, %struct.archdr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.arc_rfc1201* %15, %struct.arc_rfc1201** %7, align 8
  %16 = load i32, i32* @ARC_HDR_SIZE, align 4
  %17 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @skb_reset_mac_header(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @skb_pull(%struct.sk_buff* %21, i32 %22)
  %24 = load %struct.archdr*, %struct.archdr** %6, align 8
  %25 = getelementptr inbounds %struct.archdr, %struct.archdr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @PACKET_BROADCAST, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %57

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_PROMISC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.archdr*, %struct.archdr** %6, align 8
  %42 = getelementptr inbounds %struct.archdr, %struct.archdr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %44, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @PACKET_OTHERHOST, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %40
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %7, align 8
  %59 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %76 [
    i32 132, label %61
    i32 131, label %64
    i32 133, label %67
    i32 128, label %70
    i32 130, label %73
    i32 129, label %73
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @ETH_P_IP, align 4
  %63 = call i32 @htons(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %87

64:                                               ; preds = %57
  %65 = load i32, i32* @ETH_P_IPV6, align 4
  %66 = call i32 @htons(i32 %65)
  store i32 %66, i32* %3, align 4
  br label %87

67:                                               ; preds = %57
  %68 = load i32, i32* @ETH_P_ARP, align 4
  %69 = call i32 @htons(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %87

70:                                               ; preds = %57
  %71 = load i32, i32* @ETH_P_RARP, align 4
  %72 = call i32 @htons(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %57, %57
  %74 = load i32, i32* @ETH_P_802_3, align 4
  %75 = call i32 @htons(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %87

76:                                               ; preds = %57
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %76, %73, %70, %67, %64, %61
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
