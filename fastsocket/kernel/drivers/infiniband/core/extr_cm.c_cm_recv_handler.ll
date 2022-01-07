; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_recv_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ib_mad_agent = type { %struct.cm_port* }
%struct.cm_port = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.ib_mad_recv_wc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cm_work = type { i32, %struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.cm_req_msg = type { i32 }

@IB_CM_REQ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_MRA_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_REJ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_REP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_RTU_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_DREQ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_DREP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_SIDR_REP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_LAP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_APR_RECEIVED = common dso_local global i32 0, align 4
@CM_RECV = common dso_local global i64 0, align 8
@CM_ATTR_ID_OFFSET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@cm_work_handler = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_recv_wc*)* @cm_recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_recv_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.cm_port*, align 8
  %6 = alloca %struct.cm_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %10 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %11 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %10, i32 0, i32 0
  %12 = load %struct.cm_port*, %struct.cm_port** %11, align 8
  store %struct.cm_port* %12, %struct.cm_port** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %14 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %52 [
    i32 131, label %20
    i32 134, label %32
    i32 133, label %34
    i32 132, label %36
    i32 130, label %38
    i32 136, label %40
    i32 137, label %42
    i32 128, label %44
    i32 129, label %46
    i32 135, label %48
    i32 138, label %50
  ]

20:                                               ; preds = %2
  %21 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %22 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = bitcast %struct.TYPE_8__* %24 to %struct.cm_req_msg*
  %26 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 1, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @IB_CM_REQ_RECEIVED, align 4
  store i32 %31, i32* %7, align 4
  br label %55

32:                                               ; preds = %2
  %33 = load i32, i32* @IB_CM_MRA_RECEIVED, align 4
  store i32 %33, i32* %7, align 4
  br label %55

34:                                               ; preds = %2
  %35 = load i32, i32* @IB_CM_REJ_RECEIVED, align 4
  store i32 %35, i32* %7, align 4
  br label %55

36:                                               ; preds = %2
  %37 = load i32, i32* @IB_CM_REP_RECEIVED, align 4
  store i32 %37, i32* %7, align 4
  br label %55

38:                                               ; preds = %2
  %39 = load i32, i32* @IB_CM_RTU_RECEIVED, align 4
  store i32 %39, i32* %7, align 4
  br label %55

40:                                               ; preds = %2
  %41 = load i32, i32* @IB_CM_DREQ_RECEIVED, align 4
  store i32 %41, i32* %7, align 4
  br label %55

42:                                               ; preds = %2
  %43 = load i32, i32* @IB_CM_DREP_RECEIVED, align 4
  store i32 %43, i32* %7, align 4
  br label %55

44:                                               ; preds = %2
  %45 = load i32, i32* @IB_CM_SIDR_REQ_RECEIVED, align 4
  store i32 %45, i32* %7, align 4
  br label %55

46:                                               ; preds = %2
  %47 = load i32, i32* @IB_CM_SIDR_REP_RECEIVED, align 4
  store i32 %47, i32* %7, align 4
  br label %55

48:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %49 = load i32, i32* @IB_CM_LAP_RECEIVED, align 4
  store i32 %49, i32* %7, align 4
  br label %55

50:                                               ; preds = %2
  %51 = load i32, i32* @IB_CM_APR_RECEIVED, align 4
  store i32 %51, i32* %7, align 4
  br label %55

52:                                               ; preds = %2
  %53 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %54 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %53)
  br label %107

55:                                               ; preds = %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %20
  %56 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %57 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @be16_to_cpu(i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %65 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i64, i64* @CM_RECV, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @CM_ATTR_ID_OFFSET, align 8
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i32 @atomic_long_inc(i32* %74)
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = add i64 32, %78
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.cm_work* @kmalloc(i32 %80, i32 %81)
  store %struct.cm_work* %82, %struct.cm_work** %6, align 8
  %83 = load %struct.cm_work*, %struct.cm_work** %6, align 8
  %84 = icmp ne %struct.cm_work* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %55
  %86 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %87 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %86)
  br label %107

88:                                               ; preds = %55
  %89 = load %struct.cm_work*, %struct.cm_work** %6, align 8
  %90 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %89, i32 0, i32 0
  %91 = load i32, i32* @cm_work_handler, align 4
  %92 = call i32 @INIT_DELAYED_WORK(i32* %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.cm_work*, %struct.cm_work** %6, align 8
  %95 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %98 = load %struct.cm_work*, %struct.cm_work** %6, align 8
  %99 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %98, i32 0, i32 2
  store %struct.ib_mad_recv_wc* %97, %struct.ib_mad_recv_wc** %99, align 8
  %100 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %101 = load %struct.cm_work*, %struct.cm_work** %6, align 8
  %102 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %101, i32 0, i32 1
  store %struct.cm_port* %100, %struct.cm_port** %102, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 0), align 4
  %104 = load %struct.cm_work*, %struct.cm_work** %6, align 8
  %105 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %104, i32 0, i32 0
  %106 = call i32 @queue_delayed_work(i32 %103, i32* %105, i32 0)
  br label %107

107:                                              ; preds = %88, %85, %52
  ret void
}

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.cm_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
