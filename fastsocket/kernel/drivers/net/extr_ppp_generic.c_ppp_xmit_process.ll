; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_xmit_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_xmit_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*)* @ppp_xmit_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_xmit_process(%struct.ppp* %0) #0 {
  %2 = alloca %struct.ppp*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.ppp* %0, %struct.ppp** %2, align 8
  %4 = load %struct.ppp*, %struct.ppp** %2, align 8
  %5 = call i32 @ppp_xmit_lock(%struct.ppp* %4)
  %6 = load %struct.ppp*, %struct.ppp** %2, align 8
  %7 = getelementptr inbounds %struct.ppp, %struct.ppp* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %1
  %11 = load %struct.ppp*, %struct.ppp** %2, align 8
  %12 = call i32 @ppp_push(%struct.ppp* %11)
  br label %13

13:                                               ; preds = %26, %10
  %14 = load %struct.ppp*, %struct.ppp** %2, align 8
  %15 = getelementptr inbounds %struct.ppp, %struct.ppp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.ppp*, %struct.ppp** %2, align 8
  %20 = getelementptr inbounds %struct.ppp, %struct.ppp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call %struct.sk_buff* @skb_dequeue(i32* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %3, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load %struct.ppp*, %struct.ppp** %2, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @ppp_send_frame(%struct.ppp* %27, %struct.sk_buff* %28)
  br label %13

30:                                               ; preds = %24
  %31 = load %struct.ppp*, %struct.ppp** %2, align 8
  %32 = getelementptr inbounds %struct.ppp, %struct.ppp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load %struct.ppp*, %struct.ppp** %2, align 8
  %37 = getelementptr inbounds %struct.ppp, %struct.ppp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @skb_peek(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.ppp*, %struct.ppp** %2, align 8
  %43 = getelementptr inbounds %struct.ppp, %struct.ppp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netif_wake_queue(i32 %44)
  br label %46

46:                                               ; preds = %41, %35, %30
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.ppp*, %struct.ppp** %2, align 8
  %49 = call i32 @ppp_xmit_unlock(%struct.ppp* %48)
  ret void
}

declare dso_local i32 @ppp_xmit_lock(%struct.ppp*) #1

declare dso_local i32 @ppp_push(%struct.ppp*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ppp_send_frame(%struct.ppp*, %struct.sk_buff*) #1

declare dso_local i32 @skb_peek(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @ppp_xmit_unlock(%struct.ppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
