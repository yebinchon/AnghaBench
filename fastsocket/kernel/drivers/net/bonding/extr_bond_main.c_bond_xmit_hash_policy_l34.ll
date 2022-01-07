; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_xmit_hash_policy_l34.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_xmit_hash_policy_l34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i32*, i32* }
%struct.iphdr = type { i32, i32, i64, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @bond_xmit_hash_policy_l34 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_xmit_hash_policy_l34(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ethhdr*
  store %struct.ethhdr* %15, %struct.ethhdr** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %9, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %19 = bitcast %struct.iphdr* %18 to i32*
  %20 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32* %24, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ETH_P_IP, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %3
  %32 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IP_MF, align 4
  %36 = load i32, i32* @IP_OFFSET, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @htons(i32 %37)
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %31
  %42 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_TCP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IPPROTO_UDP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47, %41
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %55, %58
  %60 = call i32 @ntohs(i32 %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %53, %47, %31
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %65, %68
  %70 = call i32 @ntohl(i32 %69)
  %71 = and i32 %70, 65535
  %72 = xor i32 %62, %71
  %73 = load i32, i32* %7, align 4
  %74 = srem i32 %72, %73
  store i32 %74, i32* %4, align 4
  br label %89

75:                                               ; preds = %3
  %76 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %77 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %82 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %80, %85
  %87 = load i32, i32* %7, align 4
  %88 = srem i32 %86, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %75, %61
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
