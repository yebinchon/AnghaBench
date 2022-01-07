; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_match_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_match_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.cm_work = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.cm_id_private = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.cm_timewait_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.cm_req_msg = type { i32, i32 }

@cm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@IB_CM_REJ_STALE_CONN = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REQ = common dso_local global i32 0, align 4
@IB_CM_REJ_INVALID_SERVICE_ID = common dso_local global i32 0, align 4
@IB_CM_REQ_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cm_id_private* (%struct.cm_work*, %struct.cm_id_private*)* @cm_match_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cm_id_private* @cm_match_req(%struct.cm_work* %0, %struct.cm_id_private* %1) #0 {
  %3 = alloca %struct.cm_id_private*, align 8
  %4 = alloca %struct.cm_work*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.cm_id_private*, align 8
  %7 = alloca %struct.cm_id_private*, align 8
  %8 = alloca %struct.cm_timewait_info*, align 8
  %9 = alloca %struct.cm_req_msg*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  %10 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %11 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cm_req_msg*
  store %struct.cm_req_msg* %16, %struct.cm_req_msg** %9, align 8
  %17 = call i32 @spin_lock_irq(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0))
  %18 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %19 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cm_timewait_info* @cm_insert_remote_id(i32 %20)
  store %struct.cm_timewait_info* %21, %struct.cm_timewait_info** %8, align 8
  %22 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %23 = icmp ne %struct.cm_timewait_info* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %26 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %30 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.cm_id_private* @cm_get_id(i32 %28, i32 %32)
  store %struct.cm_id_private* %33, %struct.cm_id_private** %7, align 8
  %34 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0))
  %35 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %36 = icmp ne %struct.cm_id_private* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %40 = call i32 @cm_dup_req_handler(%struct.cm_work* %38, %struct.cm_id_private* %39)
  %41 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %42 = call i32 @cm_deref_id(%struct.cm_id_private* %41)
  br label %43

43:                                               ; preds = %37, %24
  store %struct.cm_id_private* null, %struct.cm_id_private** %3, align 8
  br label %112

44:                                               ; preds = %2
  %45 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %46 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.cm_timewait_info* @cm_insert_remote_qpn(i32 %47)
  store %struct.cm_timewait_info* %48, %struct.cm_timewait_info** %8, align 8
  %49 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %50 = icmp ne %struct.cm_timewait_info* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %53 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cm_cleanup_timewait(i32 %54)
  %56 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0))
  %57 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %58 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %61 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load i32, i32* @IB_CM_REJ_STALE_CONN, align 4
  %64 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %65 = call i32 @cm_issue_rej(i32 %59, %struct.TYPE_9__* %62, i32 %63, i32 %64, i32* null, i32 0)
  store %struct.cm_id_private* null, %struct.cm_id_private** %3, align 8
  br label %112

66:                                               ; preds = %44
  %67 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %68 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cm_req_msg*, %struct.cm_req_msg** %9, align 8
  %72 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cm_req_msg*, %struct.cm_req_msg** %9, align 8
  %75 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.cm_id_private* @cm_find_listen(i32 %70, i32 %73, i32 %76)
  store %struct.cm_id_private* %77, %struct.cm_id_private** %6, align 8
  %78 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %79 = icmp ne %struct.cm_id_private* %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %66
  %81 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %82 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cm_cleanup_timewait(i32 %83)
  %85 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0))
  %86 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %87 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %90 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* @IB_CM_REJ_INVALID_SERVICE_ID, align 4
  %93 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %94 = call i32 @cm_issue_rej(i32 %88, %struct.TYPE_9__* %91, i32 %92, i32 %93, i32* null, i32 0)
  br label %110

95:                                               ; preds = %66
  %96 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %97 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %96, i32 0, i32 2
  %98 = call i32 @atomic_inc(i32* %97)
  %99 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %100 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %99, i32 0, i32 2
  %101 = call i32 @atomic_inc(i32* %100)
  %102 = load i32, i32* @IB_CM_REQ_RCVD, align 4
  %103 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %104 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %107 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %106, i32 0, i32 0
  %108 = call i32 @atomic_inc(i32* %107)
  %109 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0))
  br label %110

110:                                              ; preds = %95, %80
  %111 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  store %struct.cm_id_private* %111, %struct.cm_id_private** %3, align 8
  br label %112

112:                                              ; preds = %110, %51, %43
  %113 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  ret %struct.cm_id_private* %113
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cm_timewait_info* @cm_insert_remote_id(i32) #1

declare dso_local %struct.cm_id_private* @cm_get_id(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_dup_req_handler(%struct.cm_work*, %struct.cm_id_private*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

declare dso_local %struct.cm_timewait_info* @cm_insert_remote_qpn(i32) #1

declare dso_local i32 @cm_cleanup_timewait(i32) #1

declare dso_local i32 @cm_issue_rej(i32, %struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local %struct.cm_id_private* @cm_find_listen(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
