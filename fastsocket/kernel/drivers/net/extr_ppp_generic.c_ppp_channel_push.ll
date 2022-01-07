; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_channel_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_channel_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, %struct.ppp*, %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.ppp = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @ppp_channel_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_channel_push(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ppp*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %5 = load %struct.channel*, %struct.channel** %2, align 8
  %6 = getelementptr inbounds %struct.channel, %struct.channel* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.channel*, %struct.channel** %2, align 8
  %9 = getelementptr inbounds %struct.channel, %struct.channel* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %44, %12
  %14 = load %struct.channel*, %struct.channel** %2, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i64 @skb_queue_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %45

20:                                               ; preds = %13
  %21 = load %struct.channel*, %struct.channel** %2, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call %struct.sk_buff* @skb_dequeue(i32* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %3, align 8
  %25 = load %struct.channel*, %struct.channel** %2, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_6__*, %struct.sk_buff*)*, i32 (%struct.TYPE_6__*, %struct.sk_buff*)** %30, align 8
  %32 = load %struct.channel*, %struct.channel** %2, align 8
  %33 = getelementptr inbounds %struct.channel, %struct.channel* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i32 %31(%struct.TYPE_6__* %34, %struct.sk_buff* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %20
  %39 = load %struct.channel*, %struct.channel** %2, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @skb_queue_head(i32* %41, %struct.sk_buff* %42)
  br label %45

44:                                               ; preds = %20
  br label %13

45:                                               ; preds = %38, %13
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.channel*, %struct.channel** %2, align 8
  %48 = getelementptr inbounds %struct.channel, %struct.channel* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @skb_queue_purge(i32* %49)
  br label %51

51:                                               ; preds = %46, %45
  %52 = load %struct.channel*, %struct.channel** %2, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 3
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load %struct.channel*, %struct.channel** %2, align 8
  %56 = getelementptr inbounds %struct.channel, %struct.channel* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i64 @skb_queue_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load %struct.channel*, %struct.channel** %2, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 0
  %63 = call i32 @read_lock_bh(i32* %62)
  %64 = load %struct.channel*, %struct.channel** %2, align 8
  %65 = getelementptr inbounds %struct.channel, %struct.channel* %64, i32 0, i32 1
  %66 = load %struct.ppp*, %struct.ppp** %65, align 8
  store %struct.ppp* %66, %struct.ppp** %4, align 8
  %67 = load %struct.ppp*, %struct.ppp** %4, align 8
  %68 = icmp ne %struct.ppp* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.ppp*, %struct.ppp** %4, align 8
  %71 = call i32 @ppp_xmit_process(%struct.ppp* %70)
  br label %72

72:                                               ; preds = %69, %60
  %73 = load %struct.channel*, %struct.channel** %2, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 0
  %75 = call i32 @read_unlock_bh(i32* %74)
  br label %76

76:                                               ; preds = %72, %51
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ppp_xmit_process(%struct.ppp*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
