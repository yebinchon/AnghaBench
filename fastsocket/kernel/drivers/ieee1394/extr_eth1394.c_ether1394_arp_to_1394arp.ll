; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_arp_to_1394arp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_arp_to_1394arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.eth1394_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.arphdr = type { i32 }
%struct.eth1394_arp = type { i32, i32, i32, i32, i32, i32 }

@ETH1394_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*)* @ether1394_arp_to_1394arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_arp_to_1394arp(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.eth1394_priv*, align 8
  %6 = alloca %struct.arphdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eth1394_arp*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.eth1394_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.eth1394_priv* %10, %struct.eth1394_priv** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.arphdr*
  store %struct.arphdr* %14, %struct.arphdr** %6, align 8
  %15 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %16 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %15, i64 1
  %17 = bitcast %struct.arphdr* %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.eth1394_arp*
  store %struct.eth1394_arp* %21, %struct.eth1394_arp** %8, align 8
  %22 = load %struct.eth1394_arp*, %struct.eth1394_arp** %8, align 8
  %23 = getelementptr inbounds %struct.eth1394_arp, %struct.eth1394_arp* %22, i32 0, i32 0
  store i32 16, i32* %23, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @ETH1394_ALEN, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.eth1394_arp*, %struct.eth1394_arp** %8, align 8
  %31 = getelementptr inbounds %struct.eth1394_arp, %struct.eth1394_arp* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %33 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.eth1394_arp*, %struct.eth1394_arp** %8, align 8
  %39 = getelementptr inbounds %struct.eth1394_arp, %struct.eth1394_arp* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %41 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.eth1394_arp*, %struct.eth1394_arp** %8, align 8
  %47 = getelementptr inbounds %struct.eth1394_arp, %struct.eth1394_arp* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %49 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 32
  %52 = call i32 @htons(i32 %51)
  %53 = load %struct.eth1394_arp*, %struct.eth1394_arp** %8, align 8
  %54 = getelementptr inbounds %struct.eth1394_arp, %struct.eth1394_arp* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %56 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @htonl(i32 %57)
  %59 = load %struct.eth1394_arp*, %struct.eth1394_arp** %8, align 8
  %60 = getelementptr inbounds %struct.eth1394_arp, %struct.eth1394_arp* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local %struct.eth1394_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
