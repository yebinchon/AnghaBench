; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_lacpdu_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_lacpdu_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.slave* }
%struct.slave = type { i32, i32 }
%struct.sk_buff = type { i32, i8*, i64, i64, i32 }
%struct.lacpdu_header = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@PKT_TYPE_LACPDU = common dso_local global i8* null, align 8
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@lacpdu_mcast_addr = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @ad_lacpdu_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_lacpdu_send(%struct.port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.slave*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.lacpdu_header*, align 8
  %7 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %3, align 8
  %8 = load %struct.port*, %struct.port** %3, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 1
  %10 = load %struct.slave*, %struct.slave** %9, align 8
  store %struct.slave* %10, %struct.slave** %4, align 8
  store i32 24, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.sk_buff* @dev_alloc_skb(i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.slave*, %struct.slave** %4, align 8
  %20 = getelementptr inbounds %struct.slave, %struct.slave* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @skb_reset_mac_header(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ETH_HLEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** @PKT_TYPE_LACPDU, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @skb_put(%struct.sk_buff* %39, i32 %40)
  %42 = inttoptr i64 %41 to %struct.lacpdu_header*
  store %struct.lacpdu_header* %42, %struct.lacpdu_header** %6, align 8
  %43 = load %struct.lacpdu_header*, %struct.lacpdu_header** %6, align 8
  %44 = getelementptr inbounds %struct.lacpdu_header, %struct.lacpdu_header* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @lacpdu_mcast_addr, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.lacpdu_header*, %struct.lacpdu_header** %6, align 8
  %51 = getelementptr inbounds %struct.lacpdu_header, %struct.lacpdu_header* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.slave*, %struct.slave** %4, align 8
  %55 = getelementptr inbounds %struct.slave, %struct.slave* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32 %53, i32 %56, i32 %57)
  %59 = load i8*, i8** @PKT_TYPE_LACPDU, align 8
  %60 = load %struct.lacpdu_header*, %struct.lacpdu_header** %6, align 8
  %61 = getelementptr inbounds %struct.lacpdu_header, %struct.lacpdu_header* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.port*, %struct.port** %3, align 8
  %64 = getelementptr inbounds %struct.port, %struct.port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.lacpdu_header*, %struct.lacpdu_header** %6, align 8
  %67 = getelementptr inbounds %struct.lacpdu_header, %struct.lacpdu_header* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @dev_queue_xmit(%struct.sk_buff* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %18, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
