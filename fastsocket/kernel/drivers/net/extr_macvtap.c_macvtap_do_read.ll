; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_do_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.macvtap_queue = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.kiocb = type { i32 }
%struct.iovec = type { i32 }
%struct.sk_buff = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macvtap_queue*, %struct.kiocb*, %struct.iovec*, i64, i32)* @macvtap_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_do_read(%struct.macvtap_queue* %0, %struct.kiocb* %1, %struct.iovec* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.macvtap_queue*, align 8
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.macvtap_queue* %0, %struct.macvtap_queue** %6, align 8
  store %struct.kiocb* %1, %struct.kiocb** %7, align 8
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, %struct.TYPE_6__* %14)
  store i32 0, i32* %12, align 4
  %16 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %17 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @add_wait_queue(i32 %19, i32* @wait)
  br label %21

21:                                               ; preds = %47, %5
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %29 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = call %struct.sk_buff* @skb_dequeue(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %57

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %42 = call i64 @signal_pending(%struct.TYPE_6__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @ERESTARTSYS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %57

47:                                               ; preds = %40
  %48 = call i32 (...) @schedule()
  br label %21

49:                                               ; preds = %24
  %50 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = load %struct.iovec*, %struct.iovec** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @macvtap_put_user(%struct.macvtap_queue* %50, %struct.sk_buff* %51, %struct.iovec* %52, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %49, %44, %37, %21
  %58 = load i32, i32* @TASK_RUNNING, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.macvtap_queue*, %struct.macvtap_queue** %6, align 8
  %62 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @remove_wait_queue(i32 %64, i32* @wait)
  %66 = load i32, i32* %12, align 4
  ret i32 %66
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @macvtap_put_user(%struct.macvtap_queue*, %struct.sk_buff*, %struct.iovec*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
