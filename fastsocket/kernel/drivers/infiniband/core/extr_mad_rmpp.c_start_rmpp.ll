; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_start_rmpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_start_rmpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_mad_recv_wc = type { i32 }
%struct.mad_rmpp_recv = type { i32, i32, i32, i32 }

@RMPP_STATE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mad_recv_wc* (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @start_rmpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mad_recv_wc* @start_rmpp(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_recv_wc*, align 8
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca %struct.mad_rmpp_recv*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  %8 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %9 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %10 = call %struct.mad_rmpp_recv* @create_rmpp_recv(%struct.ib_mad_agent_private* %8, %struct.ib_mad_recv_wc* %9)
  store %struct.mad_rmpp_recv* %10, %struct.mad_rmpp_recv** %6, align 8
  %11 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %12 = icmp ne %struct.mad_rmpp_recv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %15 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %14)
  store %struct.ib_mad_recv_wc* null, %struct.ib_mad_recv_wc** %3, align 8
  br label %84

16:                                               ; preds = %2
  %17 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %18 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %22 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %23 = call i64 @insert_rmpp_recv(%struct.ib_mad_agent_private* %21, %struct.mad_rmpp_recv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %27 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %26, i32 0, i32 1
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %31 = call i32 @destroy_rmpp_recv(%struct.mad_rmpp_recv* %30)
  %32 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %33 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %34 = call %struct.ib_mad_recv_wc* @continue_rmpp(%struct.ib_mad_agent_private* %32, %struct.ib_mad_recv_wc* %33)
  store %struct.ib_mad_recv_wc* %34, %struct.ib_mad_recv_wc** %3, align 8
  br label %84

35:                                               ; preds = %16
  %36 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %37 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %36, i32 0, i32 3
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %40 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %39, i32 0, i32 0
  %41 = call i64 @get_last_flag(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load i32, i32* @RMPP_STATE_COMPLETE, align 4
  %45 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %46 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %48 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %52 = call i32 @complete_rmpp(%struct.mad_rmpp_recv* %51)
  br label %80

53:                                               ; preds = %35
  %54 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %55 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %54, i32 0, i32 1
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %59 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %66 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %65, i32 0, i32 1
  %67 = call i32 @msecs_to_jiffies(i32 40000)
  %68 = call i32 @queue_delayed_work(i32 %64, i32* %66, i32 %67)
  %69 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %70 = call i64 @window_size(%struct.ib_mad_agent_private* %69)
  %71 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %72 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %78 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %79 = call i32 @ack_recv(%struct.mad_rmpp_recv* %77, %struct.ib_mad_recv_wc* %78)
  store %struct.ib_mad_recv_wc* null, %struct.ib_mad_recv_wc** %5, align 8
  br label %80

80:                                               ; preds = %53, %43
  %81 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %82 = call i32 @deref_rmpp_recv(%struct.mad_rmpp_recv* %81)
  %83 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  store %struct.ib_mad_recv_wc* %83, %struct.ib_mad_recv_wc** %3, align 8
  br label %84

84:                                               ; preds = %80, %25, %13
  %85 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %3, align 8
  ret %struct.ib_mad_recv_wc* %85
}

declare dso_local %struct.mad_rmpp_recv* @create_rmpp_recv(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @insert_rmpp_recv(%struct.ib_mad_agent_private*, %struct.mad_rmpp_recv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_rmpp_recv(%struct.mad_rmpp_recv*) #1

declare dso_local %struct.ib_mad_recv_wc* @continue_rmpp(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @get_last_flag(i32*) #1

declare dso_local i32 @complete_rmpp(%struct.mad_rmpp_recv*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @window_size(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @ack_recv(%struct.mad_rmpp_recv*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @deref_rmpp_recv(%struct.mad_rmpp_recv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
