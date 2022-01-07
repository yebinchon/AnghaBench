; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_req_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { i32, %struct.rdma_id_private* }
%struct.rdma_id_private = type { %struct.TYPE_14__, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i64 }
%struct.rdma_cm_event = type opaque
%struct.TYPE_13__ = type { %struct.ib_cm_id* }
%struct.ib_cm_event = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.rdma_cm_event.0 = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_CM_LISTEN = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_CONNECT_REQUEST = common dso_local global i32 0, align 4
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i64 0, align 8
@IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@cma_ib_handler = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@RDMA_CM_CONNECT = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@CMA_CM_MRA_SETTING = common dso_local global i32 0, align 4
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @cma_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_req_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.rdma_id_private*, align 8
  %8 = alloca %struct.rdma_cm_event.0, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  %11 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %11, i32 0, i32 1
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  store %struct.rdma_id_private* %13, %struct.rdma_id_private** %6, align 8
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %15 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %14, i32 0, i32 0
  %16 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %17 = call i32 @cma_check_req_qp_type(%struct.TYPE_14__* %15, %struct.ib_cm_event* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %169

22:                                               ; preds = %2
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %24 = load i32, i32* @RDMA_CM_LISTEN, align 4
  %25 = call i64 @cma_disable_callback(%struct.rdma_id_private* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ECONNABORTED, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %169

30:                                               ; preds = %22
  %31 = call i32 @memset(%struct.rdma_cm_event.0* %8, i32 0, i32 24)
  %32 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %33 = call i32 @cma_user_data_offset(%struct.rdma_id_private* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @RDMA_CM_EVENT_CONNECT_REQUEST, align 4
  %35 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %37 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_CM_SIDR_REQ_RECEIVED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %30
  %42 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %43 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %42, i32 0, i32 0
  %44 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %45 = call %struct.rdma_id_private* @cma_new_udp_id(%struct.TYPE_14__* %43, %struct.ib_cm_event* %44)
  store %struct.rdma_id_private* %45, %struct.rdma_id_private** %7, align 8
  %46 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %47 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* @IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  br label %75

62:                                               ; preds = %30
  %63 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %64 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %63, i32 0, i32 0
  %65 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %66 = call %struct.rdma_id_private* @cma_new_conn_id(%struct.TYPE_14__* %64, %struct.ib_cm_event* %65)
  store %struct.rdma_id_private* %66, %struct.rdma_id_private** %7, align 8
  %67 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %68 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %71 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @cma_set_req_event_data(%struct.rdma_cm_event.0* %8, i32* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %41
  %76 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %77 = icmp ne %struct.rdma_id_private* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %157

81:                                               ; preds = %75
  %82 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %83 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %82, i32 0, i32 1
  %84 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %85 = call i32 @mutex_lock_nested(i32* %83, i32 %84)
  %86 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %87 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %88 = call i32 @cma_acquire_dev(%struct.rdma_id_private* %86, %struct.rdma_id_private* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %150

92:                                               ; preds = %81
  %93 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %94 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %95 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store %struct.ib_cm_id* %93, %struct.ib_cm_id** %96, align 8
  %97 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %98 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %99 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %98, i32 0, i32 1
  store %struct.rdma_id_private* %97, %struct.rdma_id_private** %99, align 8
  %100 = load i32, i32* @cma_ib_handler, align 4
  %101 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %102 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %104 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %103, i32 0, i32 3
  %105 = call i32 @atomic_inc(i32* %104)
  %106 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %107 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)** %108, align 8
  %110 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %111 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %110, i32 0, i32 0
  %112 = bitcast %struct.rdma_cm_event.0* %8 to %struct.rdma_cm_event*
  %113 = call i32 %109(%struct.TYPE_14__* %111, %struct.rdma_cm_event* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %92
  br label %144

117:                                              ; preds = %92
  %118 = call i32 @mutex_lock(i32* @lock)
  %119 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %120 = load i32, i32* @RDMA_CM_CONNECT, align 4
  %121 = call i64 @cma_comp(%struct.rdma_id_private* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %125 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IB_QPT_UD, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %132 = load i32, i32* @CMA_CM_MRA_SETTING, align 4
  %133 = call i32 @ib_send_cm_mra(%struct.ib_cm_id* %131, i32 %132, i32* null, i32 0)
  br label %134

134:                                              ; preds = %130, %123, %117
  %135 = call i32 @mutex_unlock(i32* @lock)
  %136 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %137 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %136, i32 0, i32 1
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %140 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %139, i32 0, i32 1
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %143 = call i32 @cma_deref_id(%struct.rdma_id_private* %142)
  store i32 0, i32* %3, align 4
  br label %169

144:                                              ; preds = %116
  %145 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %146 = call i32 @cma_deref_id(%struct.rdma_id_private* %145)
  %147 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %148 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store %struct.ib_cm_id* null, %struct.ib_cm_id** %149, align 8
  br label %150

150:                                              ; preds = %144, %91
  %151 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %152 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %153 = call i32 @cma_exch(%struct.rdma_id_private* %151, i32 %152)
  %154 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %155 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  br label %157

157:                                              ; preds = %150, %78
  %158 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %159 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %162 = icmp ne %struct.rdma_id_private* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %165 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %164, i32 0, i32 0
  %166 = call i32 @rdma_destroy_id(%struct.TYPE_14__* %165)
  br label %167

167:                                              ; preds = %163, %157
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %134, %27, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @cma_check_req_qp_type(%struct.TYPE_14__*, %struct.ib_cm_event*) #1

declare dso_local i64 @cma_disable_callback(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @memset(%struct.rdma_cm_event.0*, i32, i32) #1

declare dso_local i32 @cma_user_data_offset(%struct.rdma_id_private*) #1

declare dso_local %struct.rdma_id_private* @cma_new_udp_id(%struct.TYPE_14__*, %struct.ib_cm_event*) #1

declare dso_local %struct.rdma_id_private* @cma_new_conn_id(%struct.TYPE_14__*, %struct.ib_cm_event*) #1

declare dso_local i32 @cma_set_req_event_data(%struct.rdma_cm_event.0*, i32*, i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @cma_acquire_dev(%struct.rdma_id_private*, %struct.rdma_id_private*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @cma_comp(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @ib_send_cm_mra(%struct.ib_cm_id*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cma_deref_id(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
