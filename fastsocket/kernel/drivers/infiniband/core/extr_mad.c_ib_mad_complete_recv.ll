; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_mad_complete_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_mad_complete_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, %struct.ib_mad_recv_wc*)*, i64 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_mad_send_wr_private = type { i32 }
%struct.ib_mad_send_wc = type { i32*, i64, i32 }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @ib_mad_complete_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_mad_complete_recv(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_mad_send_wr_private*, align 8
  %6 = alloca %struct.ib_mad_send_wc, align 8
  %7 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %8 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %8, i32 0, i32 2
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %12 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %15 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %14, i32 0, i32 2
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %18 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %24 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %25 = call %struct.ib_mad_recv_wc* @ib_process_rmpp_recv_wc(%struct.ib_mad_agent_private* %23, %struct.ib_mad_recv_wc* %24)
  store %struct.ib_mad_recv_wc* %25, %struct.ib_mad_recv_wc** %4, align 8
  %26 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %27 = icmp ne %struct.ib_mad_recv_wc* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %30 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %29)
  br label %102

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %34 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ib_response_mad(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %91

39:                                               ; preds = %32
  %40 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %41 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %40, i32 0, i32 2
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %45 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %46 = call %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private* %44, %struct.ib_mad_recv_wc* %45)
  store %struct.ib_mad_send_wr_private* %46, %struct.ib_mad_send_wr_private** %5, align 8
  %47 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %48 = icmp ne %struct.ib_mad_send_wr_private* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %39
  %50 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %51 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %50, i32 0, i32 2
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %55 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %54)
  %56 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %57 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %56)
  br label %102

58:                                               ; preds = %39
  %59 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %60 = call i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private* %59)
  %61 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %62 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %61, i32 0, i32 2
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %66 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %65, i32 0, i32 0
  %67 = ptrtoint i32* %66 to i64
  %68 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %69 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i64 %67, i64* %71, align 8
  %72 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %73 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_7__*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_7__*, %struct.ib_mad_recv_wc*)** %74, align 8
  %76 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %77 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %76, i32 0, i32 0
  %78 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %79 = call i32 %75(%struct.TYPE_7__* %77, %struct.ib_mad_recv_wc* %78)
  %80 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %81 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %80, i32 0, i32 1
  %82 = call i32 @atomic_dec(i32* %81)
  %83 = load i32, i32* @IB_WC_SUCCESS, align 4
  %84 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %87 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 0
  store i32* %87, i32** %88, align 8
  %89 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %90 = call i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private* %89, %struct.ib_mad_send_wc* %6)
  br label %102

91:                                               ; preds = %32
  %92 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %93 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_7__*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_7__*, %struct.ib_mad_recv_wc*)** %94, align 8
  %96 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %97 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %96, i32 0, i32 0
  %98 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %99 = call i32 %95(%struct.TYPE_7__* %97, %struct.ib_mad_recv_wc* %98)
  %100 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %101 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %100)
  br label %102

102:                                              ; preds = %28, %49, %91, %58
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.ib_mad_recv_wc* @ib_process_rmpp_recv_wc(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

declare dso_local i64 @ib_response_mad(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

declare dso_local i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
