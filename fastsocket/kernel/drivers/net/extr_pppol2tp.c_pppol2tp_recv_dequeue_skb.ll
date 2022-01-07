; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_recv_dequeue_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_recv_dequeue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppol2tp_session = type { %struct.sock*, %struct.TYPE_5__, i32, i32, i32, %struct.pppol2tp_tunnel* }
%struct.sock = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pppol2tp_tunnel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.pppox_sock = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@PPPOL2TP_MSG_SEQ = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: updated nr to %hu\0A\00", align 1
@PPPOX_BOUND = common dso_local global i32 0, align 4
@PPPOL2TP_MSG_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: recv %d byte data frame, passing to ppp\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: socket not bound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pppol2tp_session*, %struct.sk_buff*)* @pppol2tp_recv_dequeue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_recv_dequeue_skb(%struct.pppol2tp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.pppol2tp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pppol2tp_tunnel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.pppox_sock*, align 8
  store %struct.pppol2tp_session* %0, %struct.pppol2tp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %10 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %9, i32 0, i32 5
  %11 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %10, align 8
  store %struct.pppol2tp_tunnel* %11, %struct.pppol2tp_tunnel** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.TYPE_6__* @PPPOL2TP_SKB_CB(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store %struct.sock* null, %struct.sock** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @skb_orphan(%struct.sk_buff* %16)
  %18 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %5, align 8
  %19 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %5, align 8
  %25 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %30 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %36 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %34
  store i32 %39, i32* %37, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.TYPE_6__* @PPPOL2TP_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %2
  %46 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %47 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %51 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PPPOL2TP_MSG_SEQ, align 4
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %56 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %59 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i32, i32, i8*, i32, ...) @PRINTK(i32 %52, i32 %53, i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %45, %2
  %63 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %64 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %63, i32 0, i32 0
  %65 = load %struct.sock*, %struct.sock** %64, align 8
  store %struct.sock* %65, %struct.sock** %7, align 8
  %66 = load %struct.sock*, %struct.sock** %7, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PPPOX_BOUND, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %62
  %73 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %74 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PPPOL2TP_MSG_DATA, align 4
  %77 = load i32, i32* @KERN_DEBUG, align 4
  %78 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %79 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32, i32, i32, i8*, i32, ...) @PRINTK(i32 %75, i32 %76, i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @secpath_reset(%struct.sk_buff* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @skb_dst_drop(%struct.sk_buff* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i32 @nf_reset(%struct.sk_buff* %87)
  %89 = load %struct.sock*, %struct.sock** %7, align 8
  %90 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %89)
  store %struct.pppox_sock* %90, %struct.pppox_sock** %8, align 8
  %91 = load %struct.pppox_sock*, %struct.pppox_sock** %8, align 8
  %92 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %91, i32 0, i32 0
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @ppp_input(i32* %92, %struct.sk_buff* %93)
  br label %112

95:                                               ; preds = %62
  %96 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %97 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PPPOL2TP_MSG_DATA, align 4
  %100 = load i32, i32* @KERN_INFO, align 4
  %101 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %102 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i32, i32, i8*, i32, ...) @PRINTK(i32 %98, i32 %99, i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %106 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @kfree_skb(%struct.sk_buff* %110)
  br label %112

112:                                              ; preds = %95, %72
  %113 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %114 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %113, i32 0, i32 0
  %115 = load %struct.sock*, %struct.sock** %114, align 8
  %116 = call i32 @sock_put(%struct.sock* %115)
  ret void
}

declare dso_local %struct.TYPE_6__* @PPPOL2TP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @PRINTK(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @ppp_input(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
