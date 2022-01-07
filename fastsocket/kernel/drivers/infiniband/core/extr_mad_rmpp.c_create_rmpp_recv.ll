; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_create_rmpp_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_create_rmpp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mad_rmpp_recv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.ib_mad_recv_wc*, i32, i32, i32, i32, i32, i32, %struct.ib_mad_agent_private*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.ib_mad_hdr }
%struct.ib_mad_hdr = type { i32, i32, i32, i32 }
%struct.ib_mad_agent_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@recv_timeout_handler = common dso_local global i32 0, align 4
@recv_cleanup_handler = common dso_local global i32 0, align 4
@RMPP_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mad_rmpp_recv* (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @create_rmpp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mad_rmpp_recv* @create_rmpp_recv(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.mad_rmpp_recv*, align 8
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca %struct.mad_rmpp_recv*, align 8
  %7 = alloca %struct.ib_mad_hdr*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mad_rmpp_recv* @kmalloc(i32 104, i32 %8)
  store %struct.mad_rmpp_recv* %9, %struct.mad_rmpp_recv** %6, align 8
  %10 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %11 = icmp ne %struct.mad_rmpp_recv* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mad_rmpp_recv* null, %struct.mad_rmpp_recv** %3, align 8
  br label %122

13:                                               ; preds = %2
  %14 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %15 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %21 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %24 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %28 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ib_create_ah_from_wc(i32 %19, %struct.TYPE_10__* %22, i32 %26, i32 %30)
  %32 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %33 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %35 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %34, i32 0, i32 19
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %13
  br label %119

40:                                               ; preds = %13
  %41 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %42 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %43 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %42, i32 0, i32 18
  store %struct.ib_mad_agent_private* %41, %struct.ib_mad_agent_private** %43, align 8
  %44 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %45 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %44, i32 0, i32 17
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %48 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %47, i32 0, i32 16
  %49 = load i32, i32* @recv_timeout_handler, align 4
  %50 = call i32 @INIT_DELAYED_WORK(i32* %48, i32 %49)
  %51 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %52 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %51, i32 0, i32 15
  %53 = load i32, i32* @recv_cleanup_handler, align 4
  %54 = call i32 @INIT_DELAYED_WORK(i32* %52, i32 %53)
  %55 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %56 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %55, i32 0, i32 14
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load i32, i32* @RMPP_STATE_ACTIVE, align 4
  %59 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %60 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %62 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %61, i32 0, i32 12
  %63 = call i32 @atomic_set(i32* %62, i32 1)
  %64 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %65 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %66 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %65, i32 0, i32 11
  store %struct.ib_mad_recv_wc* %64, %struct.ib_mad_recv_wc** %66, align 8
  %67 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %68 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %67, i32 0, i32 1
  %69 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %70 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %69, i32 0, i32 10
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %70, align 8
  %71 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %72 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %74 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %76 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %75, i32 0, i32 9
  store i64 0, i64* %76, align 8
  %77 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %78 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %80 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store %struct.ib_mad_hdr* %83, %struct.ib_mad_hdr** %7, align 8
  %84 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %85 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %88 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %90 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %95 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %97 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %102 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %104 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %107 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %109 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %112 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %7, align 8
  %114 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %117 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  store %struct.mad_rmpp_recv* %118, %struct.mad_rmpp_recv** %3, align 8
  br label %122

119:                                              ; preds = %39
  %120 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %121 = call i32 @kfree(%struct.mad_rmpp_recv* %120)
  store %struct.mad_rmpp_recv* null, %struct.mad_rmpp_recv** %3, align 8
  br label %122

122:                                              ; preds = %119, %40, %12
  %123 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  ret %struct.mad_rmpp_recv* %123
}

declare dso_local %struct.mad_rmpp_recv* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_create_ah_from_wc(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mad_rmpp_recv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
