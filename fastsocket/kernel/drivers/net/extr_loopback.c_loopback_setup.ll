; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_loopback.c_loopback_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_loopback.c_loopback_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i64, i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_LOOPBACK = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_FRAGLIST = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_NO_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@loopback_ethtool_ops = common dso_local global i32 0, align 4
@eth_header_ops = common dso_local global i32 0, align 4
@loopback_ops = common dso_local global i32 0, align 4
@loopback_dev_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @loopback_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loopback_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 0
  store i32 16436, i32* %4, align 8
  %5 = load i32, i32* @ETH_HLEN, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 11
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @ARPHRD_LOOPBACK, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @IFF_LOOPBACK, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @NETIF_F_SG, align 4
  %26 = load i32, i32* @NETIF_F_FRAGLIST, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NETIF_F_TSO, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @NETIF_F_NO_CSUM, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NETIF_F_LLTX, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 5
  store i32* @loopback_ethtool_ops, i32** %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 4
  store i32* @eth_header_ops, i32** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 3
  store i32* @loopback_ops, i32** %47, align 8
  %48 = load i32, i32* @loopback_dev_free, align 4
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
