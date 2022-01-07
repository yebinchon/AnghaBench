; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_rep_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.cm_work = type { i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.cm_rep_msg = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@IB_CM_REJ_STALE_CONN = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REP = common dso_local global i32 0, align 4
@IB_CM_REP_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_rep_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_rep_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 1
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_rep_msg*
  store %struct.cm_rep_msg* %13, %struct.cm_rep_msg** %5, align 8
  %14 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %15 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cm_id_private* @cm_acquire_id(i32 %16, i32 0)
  store %struct.cm_id_private* %17, %struct.cm_id_private** %4, align 8
  %18 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %19 = icmp ne %struct.cm_id_private* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %22 = call i32 @cm_dup_rep_handler(%struct.cm_work* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %218

25:                                               ; preds = %1
  %26 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %27 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %28 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cm_format_rep_event(%struct.cm_work* %26, i32 %29)
  %31 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %32 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %35 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %39 [
    i32 128, label %38
    i32 129, label %38
  ]

38:                                               ; preds = %25, %25
  br label %45

39:                                               ; preds = %25
  %40 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %41 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %214

45:                                               ; preds = %38
  %46 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %47 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %50 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %49, i32 0, i32 14
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %55 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %58 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %57, i32 0, i32 14
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  store i32 %56, i32* %60, align 8
  %61 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %62 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %63 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cm_rep_get_qpn(%struct.cm_rep_msg* %61, i32 %64)
  %66 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %67 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %66, i32 0, i32 14
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  store i8* %65, i8** %69, align 8
  %70 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 0))
  %71 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %72 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %71, i32 0, i32 14
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = call i64 @cm_insert_remote_id(%struct.TYPE_19__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %45
  %77 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 0))
  %78 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %79 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_irq(i32* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %214

83:                                               ; preds = %45
  %84 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %85 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %84, i32 0, i32 14
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = call i64 @cm_insert_remote_qpn(%struct.TYPE_19__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %83
  %90 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %91 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %90, i32 0, i32 14
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = call i32 @rb_erase(i32* %93, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 1))
  %95 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %96 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %95, i32 0, i32 14
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 0))
  %100 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %101 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_irq(i32* %101)
  %103 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %104 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %107 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %106, i32 0, i32 1
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load i32, i32* @IB_CM_REJ_STALE_CONN, align 4
  %110 = load i32, i32* @CM_MSG_RESPONSE_REP, align 4
  %111 = call i32 @cm_issue_rej(i32 %105, %struct.TYPE_18__* %108, i32 %109, i32 %110, i32* null, i32 0)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %214

114:                                              ; preds = %83
  %115 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 0))
  %116 = load i32, i32* @IB_CM_REP_RCVD, align 4
  %117 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %118 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %117, i32 0, i32 13
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %121 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %124 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %123, i32 0, i32 13
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %127 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %128 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cm_rep_get_qpn(%struct.cm_rep_msg* %126, i32 %129)
  %131 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %132 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %131, i32 0, i32 12
  store i8* %130, i8** %132, align 8
  %133 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %134 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %137 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %136, i32 0, i32 10
  store i32 %135, i32* %137, align 8
  %138 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %139 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %142 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %141, i32 0, i32 9
  store i32 %140, i32* %142, align 4
  %143 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %144 = call i32 @cm_rep_get_starting_psn(%struct.cm_rep_msg* %143)
  %145 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %146 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 8
  %147 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %148 = call i32 @cm_rep_get_rnr_retry_count(%struct.cm_rep_msg* %147)
  %149 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %150 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %152 = call i32 @cm_rep_get_target_ack_delay(%struct.cm_rep_msg* %151)
  %153 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %154 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %156 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %159 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr i8, i8* %161, i64 -1
  %163 = call i8* @cm_ack_timeout(i32 %157, i8* %162)
  %164 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %165 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  store i8* %163, i8** %166, align 8
  %167 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %168 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %171 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr i8, i8* %173, i64 -1
  %175 = call i8* @cm_ack_timeout(i32 %169, i8* %174)
  %176 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %177 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store i8* %175, i8** %178, align 8
  %179 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %180 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %186 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ib_cancel_mad(i32 %184, i32 %187)
  %189 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %190 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %189, i32 0, i32 2
  %191 = call i32 @atomic_inc_and_test(i32* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %114
  %195 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %196 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %195, i32 0, i32 0
  %197 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %198 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %197, i32 0, i32 1
  %199 = call i32 @list_add_tail(i32* %196, i32* %198)
  br label %200

200:                                              ; preds = %194, %114
  %201 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %202 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %201, i32 0, i32 0
  %203 = call i32 @spin_unlock_irq(i32* %202)
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %208 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %209 = call i32 @cm_process_work(%struct.cm_id_private* %207, %struct.cm_work* %208)
  br label %213

210:                                              ; preds = %200
  %211 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %212 = call i32 @cm_deref_id(%struct.cm_id_private* %211)
  br label %213

213:                                              ; preds = %210, %206
  store i32 0, i32* %2, align 4
  br label %218

214:                                              ; preds = %89, %76, %39
  %215 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %216 = call i32 @cm_deref_id(%struct.cm_id_private* %215)
  %217 = load i32, i32* %6, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %214, %213, %20
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @cm_dup_rep_handler(%struct.cm_work*) #1

declare dso_local i32 @cm_format_rep_event(%struct.cm_work*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @cm_rep_get_qpn(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @cm_insert_remote_id(%struct.TYPE_19__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @cm_insert_remote_qpn(%struct.TYPE_19__*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @cm_issue_rej(i32, %struct.TYPE_18__*, i32, i32, i32*, i32) #1

declare dso_local i32 @cm_rep_get_starting_psn(%struct.cm_rep_msg*) #1

declare dso_local i32 @cm_rep_get_rnr_retry_count(%struct.cm_rep_msg*) #1

declare dso_local i32 @cm_rep_get_target_ack_delay(%struct.cm_rep_msg*) #1

declare dso_local i8* @cm_ack_timeout(i32, i8*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
