; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_xmit_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_xmit_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@XMIT_PLAIN = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@XMIT_CSUM_V6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@XMIT_CSUM_TCP = common dso_local global i32 0, align 4
@XMIT_CSUM_V4 = common dso_local global i32 0, align 4
@XMIT_GSO_V6 = common dso_local global i32 0, align 4
@XMIT_GSO_V4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.sk_buff*)* @bnx2x_xmit_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_xmit_type(%struct.bnx2x* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @XMIT_PLAIN, align 4
  store i32 %12, i32* %5, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @vlan_get_protocol(%struct.sk_buff* %14)
  %16 = load i32, i32* @ETH_P_IPV6, align 4
  %17 = call i64 @htons(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load i32, i32* @XMIT_CSUM_V6, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IPPROTO_TCP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %19
  br label %45

32:                                               ; preds = %13
  %33 = load i32, i32* @XMIT_CSUM_V4, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPPROTO_TCP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %32
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %11
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i64 @skb_is_gso_v6(%struct.sk_buff* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @XMIT_GSO_V6, align 4
  %52 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %67

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i64 @skb_is_gso(%struct.sk_buff* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @XMIT_GSO_V4, align 4
  %62 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %56
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso_v6(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
