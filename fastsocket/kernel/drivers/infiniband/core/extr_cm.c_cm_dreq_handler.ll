; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_dreq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_dreq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32* }
%struct.cm_id_private = type { i64, i32, i32, i32, i32, %struct.TYPE_17__, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.cm_dreq_msg = type { %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_drep_msg = type { i32 }

@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_DREQ_COUNTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_CM_LAP_SENT = common dso_local global i32 0, align 4
@IB_CM_MRA_LAP_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_dreq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_dreq_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_dreq_msg*, align 8
  %6 = alloca %struct.ib_mad_send_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %6, align 8
  %8 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %9 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %8, i32 0, i32 2
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.cm_dreq_msg*
  store %struct.cm_dreq_msg* %14, %struct.cm_dreq_msg** %5, align 8
  %15 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %16 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %19 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cm_id_private* @cm_acquire_id(i32 %17, i32 %20)
  store %struct.cm_id_private* %21, %struct.cm_id_private** %4, align 8
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %23 = icmp ne %struct.cm_id_private* %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %1
  %25 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %26 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @CM_DREQ_COUNTER, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @atomic_long_inc(i32* %35)
  %37 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %38 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %41 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %40, i32 0, i32 2
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = call i32 @cm_issue_drep(%struct.TYPE_19__* %39, %struct.TYPE_20__* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %208

46:                                               ; preds = %1
  %47 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %48 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %47, i32 0, i32 1
  %49 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %50 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32* %48, i32** %51, align 8
  %52 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %53 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %52, i32 0, i32 1
  %54 = call i32 @spin_lock_irq(i32* %53)
  %55 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %56 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %59 = call i64 @cm_dreq_get_remote_qpn(%struct.cm_dreq_msg* %58)
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %199

62:                                               ; preds = %46
  %63 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %64 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %163 [
    i32 129, label %67
    i32 132, label %67
    i32 131, label %78
    i32 130, label %104
    i32 128, label %105
    i32 133, label %150
  ]

67:                                               ; preds = %62, %62
  %68 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %69 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %75 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ib_cancel_mad(i32 %73, i32 %76)
  br label %164

78:                                               ; preds = %62
  %79 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %80 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IB_CM_LAP_SENT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %87 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IB_CM_MRA_LAP_RCVD, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %85, %78
  %93 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %94 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %100 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ib_cancel_mad(i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %92, %85
  br label %164

104:                                              ; preds = %62
  br label %164

105:                                              ; preds = %62
  %106 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %107 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %106, i32 0, i32 1
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @CM_DREQ_COUNTER, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i32 @atomic_long_inc(i32* %116)
  %118 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %119 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %118, i32 0, i32 1
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %122 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %121, i32 0, i32 2
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = call i32 @cm_alloc_response_msg(%struct.TYPE_19__* %120, %struct.TYPE_20__* %123, %struct.ib_mad_send_buf** %6)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %105
  br label %199

127:                                              ; preds = %105
  %128 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %6, align 8
  %129 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.cm_drep_msg*
  %132 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %133 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %134 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %137 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @cm_format_drep(%struct.cm_drep_msg* %131, %struct.cm_id_private* %132, i32 %135, i32 %138)
  %140 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %141 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %140, i32 0, i32 1
  %142 = call i32 @spin_unlock_irq(i32* %141)
  %143 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %6, align 8
  %144 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %143, i32* null)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %127
  %147 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %6, align 8
  %148 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %147)
  br label %149

149:                                              ; preds = %146, %127
  br label %203

150:                                              ; preds = %62
  %151 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %152 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %151, i32 0, i32 1
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @CM_DREQ_COUNTER, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = call i32 @atomic_long_inc(i32* %161)
  br label %199

163:                                              ; preds = %62
  br label %199

164:                                              ; preds = %104, %103, %67
  %165 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %166 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  store i32 133, i32* %167, align 8
  %168 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %169 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %173 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 4
  %174 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %175 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %174, i32 0, i32 3
  %176 = call i32 @atomic_inc_and_test(i32* %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %164
  %180 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %181 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %180, i32 0, i32 0
  %182 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %183 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %182, i32 0, i32 2
  %184 = call i32 @list_add_tail(i32* %181, i32* %183)
  br label %185

185:                                              ; preds = %179, %164
  %186 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %187 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %186, i32 0, i32 1
  %188 = call i32 @spin_unlock_irq(i32* %187)
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %193 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %194 = call i32 @cm_process_work(%struct.cm_id_private* %192, %struct.cm_work* %193)
  br label %198

195:                                              ; preds = %185
  %196 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %197 = call i32 @cm_deref_id(%struct.cm_id_private* %196)
  br label %198

198:                                              ; preds = %195, %191
  store i32 0, i32* %2, align 4
  br label %208

199:                                              ; preds = %163, %150, %126, %61
  %200 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %201 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %200, i32 0, i32 1
  %202 = call i32 @spin_unlock_irq(i32* %201)
  br label %203

203:                                              ; preds = %199, %149
  %204 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %205 = call i32 @cm_deref_id(%struct.cm_id_private* %204)
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %203, %198, %24
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @cm_issue_drep(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @cm_dreq_get_remote_qpn(%struct.cm_dreq_msg*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32) #1

declare dso_local i32 @cm_alloc_response_msg(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.ib_mad_send_buf**) #1

declare dso_local i32 @cm_format_drep(%struct.cm_drep_msg*, %struct.cm_id_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

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
