; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_service_main_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_service_main_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.btmrvl_thread = type { i32, %struct.btmrvl_private* }
%struct.btmrvl_private = type { %struct.TYPE_8__, i32, i32 (%struct.btmrvl_private*)*, %struct.btmrvl_adapter* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.btmrvl_adapter = type { i64, i32, i64, i64 }
%struct.sk_buff = type { i64 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@PF_NOFREEZE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"main_thread is sleeping...\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"main_thread woke up\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"main_thread: break from main thread\00", align 1
@PS_SLEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @btmrvl_service_main_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_service_main_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btmrvl_thread*, align 8
  %4 = alloca %struct.btmrvl_private*, align 8
  %5 = alloca %struct.btmrvl_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.btmrvl_thread*
  store %struct.btmrvl_thread* %10, %struct.btmrvl_thread** %3, align 8
  %11 = load %struct.btmrvl_thread*, %struct.btmrvl_thread** %3, align 8
  %12 = getelementptr inbounds %struct.btmrvl_thread, %struct.btmrvl_thread* %11, i32 0, i32 1
  %13 = load %struct.btmrvl_private*, %struct.btmrvl_private** %12, align 8
  store %struct.btmrvl_private* %13, %struct.btmrvl_private** %4, align 8
  %14 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %15 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %14, i32 0, i32 3
  %16 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %15, align 8
  store %struct.btmrvl_adapter* %16, %struct.btmrvl_adapter** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %18 = call i32 @init_waitqueue_entry(i32* %6, %struct.TYPE_9__* %17)
  %19 = load i32, i32* @PF_NOFREEZE, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %157, %119, %112, %87, %1
  %25 = load %struct.btmrvl_thread*, %struct.btmrvl_thread** %3, align 8
  %26 = getelementptr inbounds %struct.btmrvl_thread, %struct.btmrvl_thread* %25, i32 0, i32 0
  %27 = call i32 @add_wait_queue(i32* %26, i32* %6)
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @set_current_state(i32 %28)
  %30 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %24
  %35 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %41 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %46, i32 0, i32 1
  %48 = call i64 @skb_queue_empty(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %39, %24
  %51 = call i32 @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (...) @schedule()
  br label %53

53:                                               ; preds = %50, %45, %34
  %54 = load i32, i32* @TASK_RUNNING, align 4
  %55 = call i32 @set_current_state(i32 %54)
  %56 = load %struct.btmrvl_thread*, %struct.btmrvl_thread** %3, align 8
  %57 = getelementptr inbounds %struct.btmrvl_thread, %struct.btmrvl_thread* %56, i32 0, i32 0
  %58 = call i32 @remove_wait_queue(i32* %57, i32* %6)
  %59 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i64 (...) @kthread_should_stop()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %158

64:                                               ; preds = %53
  %65 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %66 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %65, i32 0, i32 1
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @spin_lock_irqsave(i32* %66, i32 %67)
  %69 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  br label %102

76:                                               ; preds = %64
  %77 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PS_SLEEP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %84 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %83, i32 0, i32 1
  %85 = call i64 @skb_queue_empty(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %89 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %88, i32 0, i32 1
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i32 %90)
  %92 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %97 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %96, i32 0, i32 2
  %98 = load i32 (%struct.btmrvl_private*)*, i32 (%struct.btmrvl_private*)** %97, align 8
  %99 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %100 = call i32 %98(%struct.btmrvl_private* %99)
  br label %24

101:                                              ; preds = %82, %76
  br label %102

102:                                              ; preds = %101, %73
  %103 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %104 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %103, i32 0, i32 1
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i32 %105)
  %107 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PS_SLEEP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %24

113:                                              ; preds = %102
  %114 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %115 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %24

120:                                              ; preds = %113
  %121 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %121, i32 0, i32 1
  %123 = call %struct.sk_buff* @skb_dequeue(i32* %122)
  store %struct.sk_buff* %123, %struct.sk_buff** %7, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = icmp ne %struct.sk_buff* %124, null
  br i1 %125, label %126, label %157

126:                                              ; preds = %120
  %127 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = call i64 @btmrvl_tx_pkt(%struct.btmrvl_private* %127, %struct.sk_buff* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %133 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %154

140:                                              ; preds = %126
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %145 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %143
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  br label %154

154:                                              ; preds = %140, %131
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = call i32 @kfree_skb(%struct.sk_buff* %155)
  br label %157

157:                                              ; preds = %154, %120
  br label %24

158:                                              ; preds = %62
  ret i32 0
}

declare dso_local i32 @init_waitqueue_entry(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @btmrvl_tx_pkt(%struct.btmrvl_private*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
