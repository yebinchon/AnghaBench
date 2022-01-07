; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_lap_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_lap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_11__, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ib_cm_lap_event_param }
%struct.ib_cm_lap_event_param = type { i32* }
%struct.cm_id_private = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.cm_lap_msg = type { %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_mra_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_LAP_COUNTER = common dso_local global i64 0, align 8
@CM_MSG_RESPONSE_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_lap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_lap_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_lap_msg*, align 8
  %6 = alloca %struct.ib_cm_lap_event_param*, align 8
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %7, align 8
  %9 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cm_lap_msg*
  store %struct.cm_lap_msg* %15, %struct.cm_lap_msg** %5, align 8
  %16 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %17 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %20 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cm_id_private* @cm_acquire_id(i32 %18, i32 %21)
  store %struct.cm_id_private* %22, %struct.cm_id_private** %4, align 8
  %23 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %24 = icmp ne %struct.cm_id_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %196

28:                                               ; preds = %1
  %29 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %30 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store %struct.ib_cm_lap_event_param* %32, %struct.ib_cm_lap_event_param** %6, align 8
  %33 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %34 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %38 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %40 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %41 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %44 = call i32 @cm_format_path_from_lap(%struct.cm_id_private* %39, i32* %42, %struct.cm_lap_msg* %43)
  %45 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %46 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %45, i32 0, i32 1
  %47 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %48 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %51 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_irq(i32* %51)
  %53 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %54 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %28
  br label %187

60:                                               ; preds = %28
  %61 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %62 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %128 [
    i32 129, label %65
    i32 131, label %65
    i32 128, label %66
    i32 130, label %115
  ]

65:                                               ; preds = %60, %60
  br label %129

66:                                               ; preds = %60
  %67 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %68 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @CM_LAP_COUNTER, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = call i32 @atomic_long_inc(i32* %77)
  %79 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %80 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %83 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %82, i32 0, i32 1
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = call i32 @cm_alloc_response_msg(%struct.TYPE_16__* %81, %struct.TYPE_17__* %84, %struct.ib_mad_send_buf** %7)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %66
  br label %187

88:                                               ; preds = %66
  %89 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %90 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.cm_mra_msg*
  %93 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %94 = load i32, i32* @CM_MSG_RESPONSE_OTHER, align 4
  %95 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %96 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %99 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %102 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @cm_format_mra(%struct.cm_mra_msg* %92, %struct.cm_id_private* %93, i32 %94, i32 %97, i32 %100, i32 %103)
  %105 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %106 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_irq(i32* %106)
  %108 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %109 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %108, i32* null)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %88
  %112 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %113 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %112)
  br label %114

114:                                              ; preds = %111, %88
  br label %191

115:                                              ; preds = %60
  %116 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %117 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %116, i32 0, i32 2
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @CM_LAP_COUNTER, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = call i32 @atomic_long_inc(i32* %126)
  br label %187

128:                                              ; preds = %60
  br label %187

129:                                              ; preds = %65
  %130 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %131 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 130, i32* %132, align 8
  %133 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %134 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %138 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %140 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %139, i32 0, i32 2
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %143 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %142, i32 0, i32 1
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %148 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %147, i32 0, i32 1
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %154 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %153, i32 0, i32 4
  %155 = call i32 @cm_init_av_for_response(%struct.TYPE_16__* %141, i32 %146, i32 %152, i32* %154)
  %156 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %157 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %160 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %159, i32 0, i32 3
  %161 = call i32 @cm_init_av_by_path(i32* %158, i32* %160)
  %162 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %163 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %162, i32 0, i32 2
  %164 = call i32 @atomic_inc_and_test(i32* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %129
  %168 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %169 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %168, i32 0, i32 0
  %170 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %171 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %170, i32 0, i32 1
  %172 = call i32 @list_add_tail(i32* %169, i32* %171)
  br label %173

173:                                              ; preds = %167, %129
  %174 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %175 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %174, i32 0, i32 0
  %176 = call i32 @spin_unlock_irq(i32* %175)
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %181 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %182 = call i32 @cm_process_work(%struct.cm_id_private* %180, %struct.cm_work* %181)
  br label %186

183:                                              ; preds = %173
  %184 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %185 = call i32 @cm_deref_id(%struct.cm_id_private* %184)
  br label %186

186:                                              ; preds = %183, %179
  store i32 0, i32* %2, align 4
  br label %196

187:                                              ; preds = %128, %115, %87, %59
  %188 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %189 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %188, i32 0, i32 0
  %190 = call i32 @spin_unlock_irq(i32* %189)
  br label %191

191:                                              ; preds = %187, %114
  %192 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %193 = call i32 @cm_deref_id(%struct.cm_id_private* %192)
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %191, %186, %25
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @cm_format_path_from_lap(%struct.cm_id_private*, i32*, %struct.cm_lap_msg*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @cm_alloc_response_msg(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.ib_mad_send_buf**) #1

declare dso_local i32 @cm_format_mra(%struct.cm_mra_msg*, %struct.cm_id_private*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_init_av_for_response(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @cm_init_av_by_path(i32*, i32*) #1

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
