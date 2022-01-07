; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_rcv_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_rcv_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pppox_sock = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PPPOX_BOUND = common dso_local global i32 0, align 4
@PPPOX_RELAY = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pppoe_rcv_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_rcv_core(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pppox_sock*, align 8
  %7 = alloca %struct.pppox_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %8)
  store %struct.pppox_sock* %9, %struct.pppox_sock** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PPPOX_BOUND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.pppox_sock*, %struct.pppox_sock** %6, align 8
  %18 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %17, i32 0, i32 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @ppp_input(i32* %18, %struct.sk_buff* %19)
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PPPOX_RELAY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @sock_net(%struct.sock* %29)
  %31 = load %struct.pppox_sock*, %struct.pppox_sock** %6, align 8
  %32 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %31, i32 0, i32 0
  %33 = call %struct.pppox_sock* @get_item_by_addr(i32 %30, i32* %32)
  store %struct.pppox_sock* %33, %struct.pppox_sock** %7, align 8
  %34 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %35 = icmp eq %struct.pppox_sock* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %68

37:                                               ; preds = %28
  %38 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %39 = call %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PPPOX_CONNECTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %64

46:                                               ; preds = %37
  %47 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %48 = call %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @__pppoe_xmit(%struct.TYPE_4__* %48, %struct.sk_buff* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %64

53:                                               ; preds = %46
  br label %61

54:                                               ; preds = %21
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i64 @sock_queue_rcv_skb(%struct.sock* %55, %struct.sk_buff* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %68

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %53
  br label %62

62:                                               ; preds = %61, %16
  %63 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %52, %45
  %65 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %66 = call %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock* %65)
  %67 = call i32 @sock_put(%struct.TYPE_4__* %66)
  br label %68

68:                                               ; preds = %64, %59, %36
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  %71 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @ppp_input(i32*, %struct.sk_buff*) #1

declare dso_local %struct.pppox_sock* @get_item_by_addr(i32, i32*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @__pppoe_xmit(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
