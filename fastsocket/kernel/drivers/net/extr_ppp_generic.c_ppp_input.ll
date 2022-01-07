; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i64 }

@PPP_CCPFRAG = common dso_local global i32 0, align 4
@PPP_MAX_RQLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppp_input(%struct.ppp_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ppp_channel*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ppp_channel* %0, %struct.ppp_channel** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.ppp_channel*, %struct.ppp_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %7, i32 0, i32 0
  %9 = load %struct.channel*, %struct.channel** %8, align 8
  store %struct.channel* %9, %struct.channel** %5, align 8
  %10 = load %struct.channel*, %struct.channel** %5, align 8
  %11 = icmp ne %struct.channel* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  br label %78

20:                                               ; preds = %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @PPP_PROTO(%struct.sk_buff* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.channel*, %struct.channel** %5, align 8
  %24 = getelementptr inbounds %struct.channel, %struct.channel* %23, i32 0, i32 0
  %25 = call i32 @read_lock_bh(i32* %24)
  %26 = load %struct.channel*, %struct.channel** %5, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 49152
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PPP_CCPFRAG, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33, %30, %20
  %38 = load %struct.channel*, %struct.channel** %5, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @skb_queue_tail(%struct.TYPE_5__* %40, %struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %59, %37
  %44 = load %struct.channel*, %struct.channel** %5, align 8
  %45 = getelementptr inbounds %struct.channel, %struct.channel* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PPP_MAX_RQLEN, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.channel*, %struct.channel** %5, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_5__* %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %4, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br label %57

57:                                               ; preds = %51, %43
  %58 = phi i1 [ false, %43 ], [ %56, %51 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  br label %43

62:                                               ; preds = %57
  %63 = load %struct.channel*, %struct.channel** %5, align 8
  %64 = getelementptr inbounds %struct.channel, %struct.channel* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @wake_up_interruptible(i32* %65)
  br label %74

67:                                               ; preds = %33
  %68 = load %struct.channel*, %struct.channel** %5, align 8
  %69 = getelementptr inbounds %struct.channel, %struct.channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load %struct.channel*, %struct.channel** %5, align 8
  %73 = call i32 @ppp_do_recv(i32 %70, %struct.sk_buff* %71, %struct.channel* %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.channel*, %struct.channel** %5, align 8
  %76 = getelementptr inbounds %struct.channel, %struct.channel* %75, i32 0, i32 0
  %77 = call i32 @read_unlock_bh(i32* %76)
  br label %78

78:                                               ; preds = %74, %17
  ret void
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @PPP_PROTO(%struct.sk_buff*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_5__*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_5__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ppp_do_recv(i32, %struct.sk_buff*, %struct.channel*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
