; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i64, i64 }
%struct.pppox_sock = type { %struct.TYPE_2__, %struct.net_device*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pppoe_hdr = type { i32, i32, i32, i32*, i32, i64 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_PPP_SES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @pppoe_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.pppox_sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pppoe_hdr, align 8
  %14 = alloca %struct.pppoe_hdr*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i8*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %20)
  store %struct.pppox_sock* %21, %struct.pppox_sock** %11, align 8
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = call i32 @lock_sock(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = load i32, i32* @SOCK_DEAD, align 4
  %26 = call i64 @sock_flag(%struct.sock* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %4
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PPPOX_CONNECTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28, %4
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %137

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %13, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %13, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %13, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %43 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %13, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %47 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %46, i32 0, i32 1
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  store %struct.net_device* %48, %struct.net_device** %15, align 8
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.net_device*, %struct.net_device** %15, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %15, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = icmp ugt i64 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %137

61:                                               ; preds = %38
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.net_device*, %struct.net_device** %15, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = add i64 %67, 32
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %62, i64 %68, i32 0, i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %137

76:                                               ; preds = %61
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = load %struct.net_device*, %struct.net_device** %15, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @skb_reserve(%struct.sk_buff* %77, i64 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = call i32 @skb_reset_network_header(%struct.sk_buff* %82)
  %84 = load %struct.net_device*, %struct.net_device** %15, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 2
  store %struct.net_device* %84, %struct.net_device** %86, align 8
  %87 = load %struct.sock*, %struct.sock** %10, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @ETH_P_PPP_SES, align 4
  %93 = call i32 @cpu_to_be16(i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 40
  %99 = call i64 @skb_put(%struct.sk_buff* %96, i64 %98)
  %100 = inttoptr i64 %99 to %struct.pppoe_hdr*
  store %struct.pppoe_hdr* %100, %struct.pppoe_hdr** %14, align 8
  %101 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %14, align 8
  %102 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = bitcast i32* %104 to i8*
  store i8* %105, i8** %16, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %108 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @memcpy_fromiovec(i8* %106, i32 %109, i64 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %76
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = call i32 @kfree_skb(%struct.sk_buff* %115)
  br label %137

117:                                              ; preds = %76
  %118 = load i64, i64* %8, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %12, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = load %struct.net_device*, %struct.net_device** %15, align 8
  %122 = load i32, i32* @ETH_P_PPP_SES, align 4
  %123 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %124 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @dev_hard_header(%struct.sk_buff* %120, %struct.net_device* %121, i32 %122, i32 %126, i32* null, i64 %127)
  %129 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %14, align 8
  %130 = call i32 @memcpy(%struct.pppoe_hdr* %129, %struct.pppoe_hdr* %13, i32 40)
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @htons(i64 %131)
  %133 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %14, align 8
  %134 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %136 = call i32 @dev_queue_xmit(%struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %117, %114, %73, %60, %35
  %138 = load %struct.sock*, %struct.sock** %10, align 8
  %139 = call i32 @release_sock(%struct.sock* %138)
  %140 = load i32, i32* %12, align 4
  ret i32 %140
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i64, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_fromiovec(i8*, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i64) #1

declare dso_local i32 @memcpy(%struct.pppoe_hdr*, %struct.pppoe_hdr*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
