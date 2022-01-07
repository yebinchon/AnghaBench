; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_disc_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_disc_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.pppoe_hdr = type { i64, i32 }
%struct.pppox_sock = type { i32 }
%struct.pppoe_net = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PADT_CODE = common dso_local global i64 0, align 8
@PPPOX_ZOMBIE = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @pppoe_disc_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_disc_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pppoe_hdr*, align 8
  %10 = alloca %struct.pppox_sock*, align 8
  %11 = alloca %struct.pppoe_net*, align 8
  %12 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %72

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %20, i32 16)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %69

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff* %25)
  store %struct.pppoe_hdr* %26, %struct.pppoe_hdr** %9, align 8
  %27 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PADT_CODE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %69

33:                                               ; preds = %24
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @dev_net(%struct.net_device* %34)
  %36 = call %struct.pppoe_net* @pppoe_pernet(i32 %35)
  store %struct.pppoe_net* %36, %struct.pppoe_net** %11, align 8
  %37 = load %struct.pppoe_net*, %struct.pppoe_net** %11, align 8
  %38 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %9, align 8
  %39 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.pppox_sock* @get_item(%struct.pppoe_net* %37, i32 %40, i32 %44, i32 %47)
  store %struct.pppox_sock* %48, %struct.pppox_sock** %10, align 8
  %49 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %50 = icmp ne %struct.pppox_sock* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %33
  %52 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %53 = call %struct.sock* @sk_pppox(%struct.pppox_sock* %52)
  store %struct.sock* %53, %struct.sock** %12, align 8
  %54 = load %struct.sock*, %struct.sock** %12, align 8
  %55 = call i32 @bh_lock_sock(%struct.sock* %54)
  %56 = load %struct.sock*, %struct.sock** %12, align 8
  %57 = call i64 @sock_owned_by_user(%struct.sock* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @PPPOX_ZOMBIE, align 4
  %61 = load %struct.sock*, %struct.sock** %12, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.sock*, %struct.sock** %12, align 8
  %65 = call i32 @bh_unlock_sock(%struct.sock* %64)
  %66 = load %struct.sock*, %struct.sock** %12, align 8
  %67 = call i32 @sock_put(%struct.sock* %66)
  br label %68

68:                                               ; preds = %63, %33
  br label %69

69:                                               ; preds = %68, %32, %23
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  br label %72

72:                                               ; preds = %69, %18
  %73 = load i32, i32* @NET_RX_SUCCESS, align 4
  ret i32 %73
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff*) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.pppox_sock* @get_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sock* @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
