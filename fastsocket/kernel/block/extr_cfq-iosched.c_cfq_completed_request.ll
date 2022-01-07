; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_completed_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_completed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, i64 }
%struct.cfq_queue = type { i64, i32, %struct.TYPE_4__*, i32, %struct.cfq_data* }
%struct.TYPE_4__ = type { i32 }
%struct.cfq_data = type { i64, i64, i64, i32, %struct.cfq_queue*, i64*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"complete rqnoidle %d\00", align 1
@REQ_NOIDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"will busy wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @cfq_completed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_completed_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.cfq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %11)
  store %struct.cfq_queue* %12, %struct.cfq_queue** %5, align 8
  %13 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %14 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %13, i32 0, i32 4
  %15 = load %struct.cfq_data*, %struct.cfq_data** %14, align 8
  store %struct.cfq_data* %15, %struct.cfq_data** %6, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = call i32 @rq_is_sync(%struct.request* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %20 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @REQ_NOIDLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 (%struct.cfq_data*, %struct.cfq_queue*, i8*, ...) @cfq_log_cfqq(%struct.cfq_data* %19, %struct.cfq_queue* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %32 = call i32 @cfq_update_hw_tag(%struct.cfq_data* %31)
  %33 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %34 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %41 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %48 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %52 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.request*, %struct.request** %4, align 8
  %56 = call %struct.TYPE_6__* @RQ_CFQG(%struct.request* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %61 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.request*, %struct.request** %4, align 8
  %65 = call i32 @rq_start_time_ns(%struct.request* %64)
  %66 = load %struct.request*, %struct.request** %4, align 8
  %67 = call i32 @rq_io_start_time_ns(%struct.request* %66)
  %68 = load %struct.request*, %struct.request** %4, align 8
  %69 = call i32 @rq_data_dir(%struct.request* %68)
  %70 = load %struct.request*, %struct.request** %4, align 8
  %71 = call i32 @rq_is_sync(%struct.request* %70)
  %72 = call i32 @cfq_blkiocg_update_completion_stats(i32* %63, i32 %65, i32 %67, i32 %69, i32 %71)
  %73 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %74 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %77 = call i64 @cfq_cfqq_sync(%struct.cfq_queue* %76)
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %2
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.request*, %struct.request** %4, align 8
  %86 = call %struct.TYPE_5__* @RQ_CIC(%struct.request* %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.request*, %struct.request** %4, align 8
  %89 = getelementptr inbounds %struct.request, %struct.request* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %92 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %91, i32 0, i32 5
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %90, %95
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @time_after(i64 %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %83
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %103 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %83
  br label %105

105:                                              ; preds = %104, %2
  %106 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %107 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %106, i32 0, i32 4
  %108 = load %struct.cfq_queue*, %struct.cfq_queue** %107, align 8
  %109 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %110 = icmp eq %struct.cfq_queue* %108, %109
  br i1 %110, label %111, label %179

111:                                              ; preds = %105
  %112 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %113 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %112, i32 0, i32 1
  %114 = call i32 @RB_EMPTY_ROOT(i32* %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %116 = call i64 @cfq_cfqq_slice_new(%struct.cfq_queue* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %120 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %121 = call i32 @cfq_set_prio_slice(%struct.cfq_data* %119, %struct.cfq_queue* %120)
  %122 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %123 = call i32 @cfq_clear_cfqq_slice_new(%struct.cfq_queue* %122)
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %126 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %127 = call i64 @cfq_should_wait_busy(%struct.cfq_data* %125, %struct.cfq_queue* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %131 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %10, align 8
  %133 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %134 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %129
  %138 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %139 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %137, %129
  %142 = load i64, i64* @jiffies, align 8
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %142, %143
  %145 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %146 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %148 = call i32 @cfq_mark_cfqq_wait_busy(%struct.cfq_queue* %147)
  %149 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %150 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %151 = call i32 (%struct.cfq_data*, %struct.cfq_queue*, i8*, ...) @cfq_log_cfqq(%struct.cfq_data* %149, %struct.cfq_queue* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %141, %124
  %153 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %154 = call i64 @cfq_slice_used(%struct.cfq_queue* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %158 = call i64 @cfq_class_idle(%struct.cfq_queue* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %152
  %161 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %162 = call i32 @cfq_slice_expired(%struct.cfq_data* %161, i32 1)
  br label %178

163:                                              ; preds = %156
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %171 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %172 = call i32 @cfq_close_cooperator(%struct.cfq_data* %170, %struct.cfq_queue* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %176 = call i32 @cfq_arm_slice_timer(%struct.cfq_data* %175)
  br label %177

177:                                              ; preds = %174, %169, %166, %163
  br label %178

178:                                              ; preds = %177, %160
  br label %179

179:                                              ; preds = %178, %105
  %180 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %181 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %186 = call i32 @cfq_schedule_dispatch(%struct.cfq_data* %185)
  br label %187

187:                                              ; preds = %184, %179
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, ...) #1

declare dso_local i32 @cfq_update_hw_tag(%struct.cfq_data*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_6__* @RQ_CFQG(%struct.request*) #1

declare dso_local i32 @cfq_blkiocg_update_completion_stats(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rq_start_time_ns(%struct.request*) #1

declare dso_local i32 @rq_io_start_time_ns(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @cfq_cfqq_sync(%struct.cfq_queue*) #1

declare dso_local %struct.TYPE_5__* @RQ_CIC(%struct.request*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i64 @cfq_cfqq_slice_new(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_set_prio_slice(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_slice_new(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_should_wait_busy(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_mark_cfqq_wait_busy(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_slice_used(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_class_idle(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_slice_expired(%struct.cfq_data*, i32) #1

declare dso_local i32 @cfq_close_cooperator(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_arm_slice_timer(%struct.cfq_data*) #1

declare dso_local i32 @cfq_schedule_dispatch(%struct.cfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
