; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_xmit_hash_policy_l23.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_xmit_hash_policy_l23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i32*, i32* }
%struct.iphdr = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @bond_xmit_hash_policy_l23 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_xmit_hash_policy_l23(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ethhdr*
  store %struct.ethhdr* %13, %struct.ethhdr** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @ETH_P_IP, align 4
  %20 = call i64 @htons(i32 %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %3
  %23 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %25, %28
  %30 = call i32 @ntohl(i32 %29)
  %31 = and i32 %30, 65535
  %32 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %33 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %36, %41
  %43 = xor i32 %31, %42
  %44 = load i32, i32* %7, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %4, align 4
  br label %60

46:                                               ; preds = %3
  %47 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %51, %56
  %58 = load i32, i32* %7, align 4
  %59 = srem i32 %57, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %46, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
