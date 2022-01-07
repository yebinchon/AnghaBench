; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_fill_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_hdr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i64, i32 }
%struct.sk_buff = type { i64 }
%struct.vlan_ethhdr = type { i64, i32 }

@QETH_HEADER_TYPE_LAYER2 = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_BROADCAST = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_UNICAST = common dso_local global i32 0, align 4
@QETH_HEADER_SIZE = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@QETH_LAYER2_FLAG_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_hdr*, %struct.sk_buff*, i32, i32)* @qeth_l2_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l2_fill_header(%struct.qeth_card* %0, %struct.qeth_hdr* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qeth_hdr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qeth_hdr* %1, %struct.qeth_hdr** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = call i64 @skb_mac_header(%struct.sk_buff* %12)
  %14 = inttoptr i64 %13 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %14, %struct.vlan_ethhdr** %11, align 8
  %15 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %16 = call i32 @memset(%struct.qeth_hdr* %15, i32 0, i32 32)
  %17 = load i32, i32* @QETH_HEADER_TYPE_LAYER2, align 4
  %18 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 %17, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @RTN_MULTICAST, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load i32, i32* @QETH_LAYER2_FLAG_MULTICAST, align 4
  %27 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %26
  store i32 %34, i32* %32, align 4
  br label %60

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @RTN_BROADCAST, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* @QETH_LAYER2_FLAG_BROADCAST, align 4
  %41 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 4
  br label %59

49:                                               ; preds = %35
  %50 = load i32, i32* @QETH_LAYER2_FLAG_UNICAST, align 4
  %51 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %50
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %49, %39
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QETH_HEADER_SIZE, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 %65, i64* %69, align 8
  %70 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %71 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @ETH_P_8021Q, align 4
  %74 = call i64 @__constant_htons(i32 %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %60
  %77 = load i32, i32* @QETH_LAYER2_FLAG_VLAN, align 4
  %78 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %77
  store i32 %85, i32* %83, align 4
  %86 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %87 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ntohs(i32 %88)
  %90 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %91 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  br label %94

94:                                               ; preds = %76, %60
  ret void
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.qeth_hdr*, i32, i32) #1

declare dso_local i64 @__constant_htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
