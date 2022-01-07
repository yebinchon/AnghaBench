; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_request_partition_activation_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_request_partition_activation_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.xpc_rsvd_page = type { i16, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.xpc_activate_mq_msg_activate_req_uv = type { i32, i32, i32 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@xpc_rsvd_page = common dso_local global %struct.TYPE_15__* null, align 8
@XPC_ACTIVATE_MQ_MSG_ACTIVATE_REQ_UV = common dso_local global i32 0, align 4
@XPC_P_ASR_ACTIVATE_UV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_rsvd_page*, i64, i32)* @xpc_request_partition_activation_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_request_partition_activation_uv(%struct.xpc_rsvd_page* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.xpc_rsvd_page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca %struct.xpc_partition*, align 8
  %9 = alloca %struct.xpc_activate_mq_msg_activate_req_uv, align 4
  store %struct.xpc_rsvd_page* %0, %struct.xpc_rsvd_page** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %4, align 8
  %11 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 4
  store i16 %12, i16* %7, align 2
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %14 = load i16, i16* %7, align 2
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %13, i64 %15
  store %struct.xpc_partition* %16, %struct.xpc_partition** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %19 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %4, align 8
  %21 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %24 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %4, align 8
  %26 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %31 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 4
  %34 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %4, align 8
  %35 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %40 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 8
  %43 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %44 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %3
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xpc_rsvd_page, align 8
  %52 = call i32 @uv_gpa(%struct.TYPE_15__* %51)
  %53 = getelementptr inbounds %struct.xpc_activate_mq_msg_activate_req_uv, %struct.xpc_activate_mq_msg_activate_req_uv* %9, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xpc_rsvd_page, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.xpc_activate_mq_msg_activate_req_uv, %struct.xpc_activate_mq_msg_activate_req_uv* %9, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xpc_rsvd_page, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.xpc_activate_mq_msg_activate_req_uv, %struct.xpc_activate_mq_msg_activate_req_uv* %9, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %67 = load i32, i32* @XPC_ACTIVATE_MQ_MSG_ACTIVATE_REQ_UV, align 4
  %68 = call i32 @xpc_send_activate_IRQ_part_uv(%struct.xpc_partition* %66, %struct.xpc_activate_mq_msg_activate_req_uv* %9, i32 12, i32 %67)
  br label %69

69:                                               ; preds = %50, %3
  %70 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %71 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.xpc_partition*, %struct.xpc_partition** %8, align 8
  %77 = load i32, i32* @XPC_P_ASR_ACTIVATE_UV, align 4
  %78 = call i32 @xpc_send_local_activate_IRQ_uv(%struct.xpc_partition* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  ret void
}

declare dso_local i32 @uv_gpa(%struct.TYPE_15__*) #1

declare dso_local i32 @xpc_send_activate_IRQ_part_uv(%struct.xpc_partition*, %struct.xpc_activate_mq_msg_activate_req_uv*, i32, i32) #1

declare dso_local i32 @xpc_send_local_activate_IRQ_uv(%struct.xpc_partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
